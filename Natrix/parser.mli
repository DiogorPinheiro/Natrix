
(* The type of tokens. *)

type token = 
  | VIRGULA
  | VEZES
  | VAR
  | TYPE
  | TO
  | THEN
  | SEMICOLON
  | RETURN
  | PRINT
  | OR
  | OF
  | NOT
  | NEWLINE
  | MININT
  | MENOS
  | MENORIGUAL
  | MENOR
  | MAXINT
  | MAIS
  | MAIORIGUAL
  | MAIOR
  | INTTYPE
  | IN
  | IGUAL
  | IF
  | ID of (string)
  | FOR
  | FILLED
  | ESQUARE
  | EPAREN
  | EOF
  | ELSE
  | EBRACE
  | DSQUARE
  | DPAREN
  | DO
  | DIVIDIR
  | DIF
  | DEFINED
  | DEF
  | DBRACE
  | CST of (Ast.constant)
  | BY
  | BOOLTYPE
  | AS
  | ARRAY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)
