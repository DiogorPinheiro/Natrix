{
  open Parser
  open Lexing

  exception Lexing_error of char

  let id_or_kwd =
    let h = Hashtbl.create 32 in
    List.iter (fun (s, tok) -> Hashtbl.add h s tok)
      ["def", DEF; "if", IF; "else", ELSE;
       "return", RETURN; "print", PRINT;
       "foreach", FOR; "in", IN;
       "&", AND; "|", OR;
       "True", CST (Nbool true);
       "False", CST (Nbool false);
       "None", CST Cnone;];
   fun s -> try Hashtbl.find h s with Not_found -> IDENT s

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }
}

let espaco =[' ' '\t']
let digito = ['0'-'9']
let int = digito+       (* Sequência não vazia de digitos *)
let letra = ['a'-'z' 'A'-'Z']
let id = letra+       (* Sequência não vazia de letras *)

rule token = parse
  | ident as id { [id_or_kwd id] }
  | integer as s
            { try [CST (Nint (int_of_string s))]
              with _ -> raise (Lexing_error ("valor demasiado alto: " ^ s)) }
  | ".."        { TO }
  | "+"         { MAIS }
  | "-"         { MENOS }
  | "*"         { VEZES }
  | "/"         { DIVIDIR }
  | "("         { EPAREN }
  | ")"         { DPAREN }
  | "{"         { EBRACE }
  | "}"         { DBRACE }
  | "["         { ESQUARE }
  | "]"         { DSQUARE }
  | ","         { VIRGULA }
  | ";"         { SEMICOLON }
  | "="         { IGUAL }
  | ":="        { DEFINED }
  | "!="        { DIF }
  | ">"         { MAIOR }
  | ">="        { MAIORIGUAL }
  | "<"         { MENOR }
  | "<="        { MENORIGUAL }
  | "then"      { THEN }
  | "do"        { DO }
  | "int"       { INTTYPE }
  | "bool"      { BOOLTYPE }
  | "filled"    { FILLED }
  | "by"        { BY }
  | "var"       { VAR }
  | "type"      { TYPE }
  | "array"     { ARRAY }
  | "maxint"    { MAXINT }
  | "minint"    { MININT }
  | ":"         { AS }
  | "//"  [^'\n']* '\n' { newline lexbuf; token lexbuf }
  | eof      { EOF }
  | "\n"      { newline lexbuf; token lexbuf }
  | _ as c  { raise (Lexing_error c) }

