open Ast
open Format
open Array

(* Excepção levantada para assinalar um erro durante a interpretação *)
exception Error of string
let error s = raise (Error s)

type value =
  | Vnone
  | Vbool of bool
  | Vint of int
  | Vstring of string
  | Vlist of value array
  | MAXINT
  | MININT

let rec print = function
  | Vnone -> printf "none"
  | Vbool true -> printf "True"
  | Vbool false -> printf "False"
  | Vint n -> printf "%d" n
  | MININT -> assert false
  | MAXINT -> assert false
  | Vstring s -> printf "%s" s
  | Vlist a ->
    let n = Array.length a in
    printf "[";
    for i = 0 to n-1 do print a.(i); if i < n-1 then printf ", " done;
    printf "]"

let is_false = function (* Abordagem mais estrita relativamente ao que é falso, será necessário afirmar explicitamente se o é *)
  | Vnone
  | Vbool false
  | Vlist [||] -> true  (* Verificar estes dois *)
  | _ -> false

  let is_true v = not (is_false v)

let functions = (Hashtbl.create 17 : (string, ident list * instr) Hashtbl.t)

(* A instrução 'return' de Python é interpretada com a ajuda de uma excepção *)
  
exception Return of value
  
(* As variáveis locais (parâmetros de funções e variáveis introduzidos
     pelas atribuições) são arquivadas numa tabela de dispersão (hashtable) 
     passada como argumento nas funções seguintes com o nome 'ctx' *)
  
type ctx = (string, value) Hashtbl.t

let rec compare_palavras e1 length1 e2 length2 i = (* Comparar palavras : i -> contador de letras na palavra*)
  if i=length1 && i=length2 then 0 (* Se o contador for igual a ambas as palavras, então é porque elas são iguas *)
  else if i=length1 then -1        (* Se o contador chegar primeiro à primeira palavra, então é porque esta é maior que a outra *)   
  else if i=length2 then 1
  else
    let cmp = compare e1.(i) e2.(i) in  (* Comparar as duas letras no index correspondente da palavra *)
    if cmp <> 0 then cmp else compare_palavras e1 (length e1) e2 (length e2) (i+1)   (* Se as letras forem iguais então aumenta-se o contador *)

let rec comparar e1 e2 =
  match e1,e2 with
  | Vlist v1, Vlist v2 -> compare_palavras v1 (length v1) v2 (length v2) 0
  | _ -> compare e1 e2    (* Se for só uma letra ou numero a comparação pode ser feita de imediato usando o comando compare *)

let rec expr ctx = function
  | Const Nnone ->
      Vnone
  | Const (Nstring s) ->
      Vstring s
  (* aritmética *)
  | Const (Nint n) ->
      Vint n (* Recebe valor int, tratamento semelhante ao string anterior*)
  | EOP (ADD | SUB | MUL | DIV |
      EQ | DF | GT | GE | LT | LE as eop, e1, e2) ->
  let v1 = expr ctx e1 in
  let v2 = expr ctx e2 in
  begin match eop, v1, v2 with
    | ADD, Vint n1, Vint n2 -> Vint (n1+n2) 
    | SUB, Vint n1, Vint n2 -> Vint (n1-n2) 
    | MUL, Vint n1, Vint n2 -> Vint (n1*n2)  
    | DIV, Vint n1, Vint n2 -> Vint (n1/n2) 
    | DIV, Vint _, Vint 0 -> error "divisao por zero"  (* Evitar divisão por zero *)
    | EQ, _, _  -> Vbool(comparar v1 v2 = 0) (* equal to *)
    | DF, _, _ -> Vbool (comparar v1 v2 <> 0) (* not equal to *)
    | LT, _, _  -> Vbool (comparar v1 v2 < 0) (* lower than *)
    | LE, _, _  -> Vbool (comparar v1 v2 <= 0) (* lower or equal than *)
    | GT, _, _  -> Vbool (comparar v1 v2 > 0) (* greater than *)
    | GE, _, _  -> Vbool (comparar v1 v2 >= 0) (* greater or equal than *)
    | ADD, Vstring s1, Vstring s2 -> Vstring (s1^s2)  (* Juntar strings*)
    | ADD, Vlist l1, Vlist l2 -> Vlist (append l1 l2) 
    | _ -> error "unsupported operand types"
  end
(* booleanos *)
  | Const (Nbool b) -> Vbool b 
  | EOP (OAND, e1, e2) -> let v1 = expr ctx e1 in        (* Avalia valor de e1 chamando-o recursivamente *)
    if is_false v1 then v1 else expr ctx e2   (* Se v1 for falso então retorna o valor booleano de v1, caso contrário vai buscar o valor de e2 *)
  | EOP (OOR, e1, e2) -> let v1 = expr ctx e1 in       (* Avaliar expressão de e1 <- VERIFICAR *)
    if is_false v1 then expr ctx e2 else v1   
  | Eunop (Unot, e1) ->   Vbool (is_false (expr ctx e1) )   (* Retornar bool negativo *)
(* chamadas de função *)
  | Var id ->    (* Verificar se existe elemento da Hasthbl ctx na posição id*)
      if not (Hashtbl.mem ctx id ) then error "Index inexistente";
      Hashtbl.find ctx id   (* index existe nas variáveis, logo resta apenas encontrar o elemento dessa posição *)
  | CALL (f, el) ->
      if not (Hashtbl.mem functions f) then error "Funcao nao encontrada"; (* verificar se função está na hashtable, caso contrário dar erro *)
      let args, body = Hashtbl.find functions f in(* obter argumentos e corpo(List) da hashtbl function *)
      if List.length args <> List.length el then error "NºArgumentos desigual";(* Ver se o comprimento dos argumentos for diferente ao comprimento de el dá erro pq precisa do mesmo nº de argumentos *)
      let ct = Hashtbl.create 16 in(* Criar nova hashtable com tamanho 16 *)
      List.iter2 (fun x e -> Hashtbl.add ct x (expr ctx e)) args el;(* Iterar entre as duas listas args e el, adicionando na nova hashtbl uma variável x e uma expressão*)
      begin
        try
            instr ct body; Vnone
        with
            Return v -> v
      end
  (*| Call ("size", [e1]) ->
      begin match expr ctx e1 with
       | Vstring s -> Vint (String.length s)
       | Vlist l -> Vint (Array.length l)
       | _ -> error "Este valor não tem comprimento"
      end *)
  | LIST el -> Vlist (of_list (List.map (expr ctx) el ))            (* Listar elementos da hashtbl ctx *)
  | Seq (e1,e2) ->  assert false
    (*let n1 = expr_int ctx e1 in
    let n2 = expr_int ctx e2 in
    Vlist (Array.init (max e1 n2) (fun i -> Vint i))  (* Criar intervalo [e1 .. e2]*) *)
  | GET (e1, e2) ->        (* get elemento na posição e2 na lista e1 *)
      begin match expr ctx e1 with
        | Vlist l -> 
            let n = expr_int ctx e2 in
            (try l.(n) with Invalid_argument _ -> error "index out of bounds")
        | _ -> error "esperava uma lista"
      end


and expr_int ctx e =    (* Retornar valor inteiro *)
  match expr ctx e with
   | Vint n -> n
   | _ -> error "integer expected"   
  
  (* interpretação de uma instrução ; não retorna nada *)
and instr ctx = function
    | EVAL e ->
        ignore (expr ctx e)
    | IPRI e ->
        print (expr ctx e); printf "@."
    | BODY bl ->
        corpo ctx bl
    | IIT (e, s1, s2) ->  (* e -> expressão aritmética ; s1 -> ação 1 ; s2 -> ação 2 *)
        if is_true (expr ctx e) then instr ctx s1 else instr ctx s2  (* Se expressão for verdadeira faz a primeira ação, caso contrário faz a segunda *)
    | Assign (id,t1, e1) -> (* Colocar na posição id das variáveis locais o elemento e1 *)  
        Hashtbl.replace ctx id (expr ctx e1)
    | RET e -> 
        raise (Return (expr ctx e) )      (* Usar return já definida (raise faz o programa parar e fazer o return) *)
    | IFOR (x, e, s) ->   (* atribuí a variável x sucessivamente aos diferentes elementos da lista 'e' e executa de cada vez a instrução 's' *)
        begin match expr ctx e with
          | Vlist l -> Array.iter (fun v -> Hashtbl.replace ctx x v ; instr ctx s) l
          | _ -> error "esperada lista"
        end
    | ArrValue (e1, e2, e3) ->    (* colocar elemento e3 na posição e2 na lista e1*)
        begin match expr ctx e1 with
          | Vlist l -> l.(expr_int ctx e2) <- (expr ctx e3)
          | _ -> error "esperada lista"
        end   
    | FIL (x, e1, e2) -> assert false
       (* begin match instr ctx e1 with
          | Vlist l -> Array.mapi (fun index element -> e2) l
          | _ -> error "esperada lista"
        end *)
    | CrSeq (id, e1) -> (* Colocar na posição id das variáveis locais o elemento e1 *)
        Hashtbl.replace ctx id (expr ctx e1)
    | COMPARRAY(i1,e1,t,e2) -> assert false (* TODO *)
    | ARR (i,e1,e2) -> assert false (* TODO *)

and corpo ctx = function
  | [] -> ()
  | s :: sl -> instr ctx s; corpo ctx sl

let prog (fl, s) =
  List.iter ( fun (f, parametros, corpo) -> Hashtbl.add functions f (parametros,corpo)) fl ; 
  instr (Hashtbl.create 17) s