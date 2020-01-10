%{
  open Ast
%}

(* Declaração de todos os tokens léxicos esperados *)
%token <Ast.constant> CST
%token <string> ID
%token TO
%token MAIS, MENOS, VEZES, DIVIDIR, AND, OR
%token EPAREN, DPAREN, EBRACE, DBRACE, ESQUARE, DSQUARE
%token VIRGULA, SEMICOLON
%token DEFINED
%token MAIOR, MAIORIGUAL, MENOR, MENORIGUAL, DIF, IGUAL
%token IF, THEN, ELSE, IN, DO, FOR, FILLED, BY, DEF, AS, OF, NOT
%token VAR, ARRAY
%token RETURN, PRINT, EOF, TYPE, INTTYPE, BOOLTYPE, NEWLINE, MAXINT, MININT

(* Precedência e associatividade *)
%left OR                            /* Precedência mais baixa */
%left AND
%nonassoc IGUAL            
%nonassoc MENOR MENORIGUAL MAIOR MAIORIGUAL DIF
%left MAIS MENOS
%left VEZES DIVIDIR                 
%nonassoc ESQUARE                     /* Precedência mais alta */

(* Ponto de entrada da gramática *)
%start prog

(* Tipo dos valores devolvidos pelo parser *)
%type <Ast.prog> prog

%%

prog: 
	| NEWLINE? f = list(func) s = separated_nonempty_list(SEMICOLON,instr) EOF { f, BODY s } 
;

func:
  | DEF  t = typ i1=ident  EPAREN  s = separated_list(VIRGULA,ident)  DPAREN  AS  b = body  {i1,s,b}        (* def int nome(... , ...) : {...} *)
;

(* Corpo da função *)
body:
  | c = instr SEMICOLON NEWLINE { c } 
  | NEWLINE EBRACE  s = separated_nonempty_list(SEMICOLON,instr)  DBRACE     { BODY s }
;

(* Tipos *)
typ:
| INTTYPE                                                                               { TypInt }
| BOOLTYPE                                                                               { TypBool }
;

(*arr:
  | ARRAY { TypArray }
;*)


optarg: 
                                                    {[]}
 | EPAREN  s = separated_list(VIRGULA,expr) DPAREN  {s}
;

expr:
    | c = CST   {Const c }
    | ESQUARE n1 = CST TO  e2=expr  DSQUARE                      { Seq(n1,e2) }      (* [1..2] ou [1..maxint] *)
    | e1 = expr eop = op e2 = expr                                              { EOP(eop,e1,e2) }  (* Simplificar operações +,-,*,/ *)
    | EPAREN e = expr DPAREN                                                      { e }               (* (...) *)
    | EPAREN MENOS  e = expr DPAREN                                                       {Eunop (Uneg, e)} (* (-1) *)
    | EPAREN NOT e1 = expr DPAREN     { Eunop (Unot, e1) }
    | i= ident  s = optarg                                    {if s=[] then (Var i) else  CALL(i,s) } (* Chamada da função *)              
    | e1=expr  ESQUARE  e2=expr  DSQUARE                 { GET(e1,e2) }
    | ESQUARE  s= separated_list(VIRGULA,expr) DSQUARE { LIST s }
;

(* Operações *)
%inline op:
  | MAIS                                                                                { ADD }
  | MENOS                                                                               { SUB }
  | VEZES                                                                               { MUL }
  | DIVIDIR                                                                             { DIV }
  | IGUAL                                                                               { EQ }
  | DIF                                                                                 { DF }
  | MAIOR                                                                               { GT }
  | MAIORIGUAL                                                                          { GE }
  | MENOR                                                                               { LT }
  | MENORIGUAL                                                                          { LE }
  | AND                                                                                 { OAND }
  | OR                                                                                  { OOR }
;

(* Condições *)
instr_simples:
  | PRINT  EPAREN  e1 = expr  DPAREN                                                { IPRI(e1) }             (*  print(...) *)
  | e1 = expr  ESQUARE  e2=expr  DSQUARE  DEFINED  e3 = expr                    { ArrValue(e1,e2,e3) }  (* a[0] := 0 *)
  | RETURN e = expr { RET(e) }                        (* return expr *)
  | VAR  i1 = ident  AS  a=instr_simples  FILLED BY  e1 = expr                             { FIL(i1,a,e1) }       (* var a : arr filled by 0 *)
  | VAR  i1 = ident  AS  t = typ  IGUAL  e = expr                                  { Assign(i1,t,e) }    (* var n2 : int = 0 *)
  | TYPE i1=ident IGUAL ARRAY e1=expr OF e2=expr   {ARR(i1,e1,e2)}  (* type arr : array t of int; *)
  | TYPE  x1=ident IGUAL  e1=expr                      { CrSeq(x1,e1) }      (* type x = [1..2] *)
  | VAR i1=ident AS ARRAY e1=expr OF t=typ FILLED BY e2=expr  {COMPARRAY(i1,e1,t,e2)} (* var nome: array 10 of int filled by 1 *)
  | e = expr  { EVAL(e) }
;

instr:
  | IF e1 = expr THEN b1 = body                               { IIT(e1,b1, BODY []) }       (* if (x>7) then {...} *)
  | IF e1 = expr THEN b1=body ELSE b2=body { IIT(e1,b1,b2) }      (* if (x>7) then {...} else {...} *) 
  | FOR i1=ident IN  e = expr DO b1=body                                 { IFOR (i1, e, b1) }     (* foreach i in 1..19 do { expr };  *)
  | c = instr_simples  NEWLINE                                                              { c }
;

ident:
  id = ID { id }
;