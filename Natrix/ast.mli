
type ident = string

type op =
  | ADD | SUB | MUL | DIV 
  | EQ | DF | GT | GE | LT | LE 
  | OAND | OOR

type unop =
  | Uneg 
  | Unot

type constant =
  | MAXINT | MININT
  | Nnone
  | Nstring of string
  | Nbool of bool
  | Nint of int

type typ =
  | TypInt
  | TypBool

type expr =
  | Const of constant
  | Seq of constant * expr
  | Var of ident
  | EOP of op * expr * expr
  | Eunop of unop * expr 
  | CALL of ident * expr list
  | LIST of expr list
  | GET of expr * expr   

and instr =
  | IPRI of expr
  | ArrValue of expr * expr * expr
  | RET of expr
  | FIL of ident * instr * expr
  | Assign of ident * typ * expr
  | ARR of ident * expr * expr
  | CrSeq of ident * expr
  | COMPARRAY of ident * expr * typ * expr
  | EVAL of expr
  | IIT of expr * instr * instr
  | IFOR of ident * expr * instr
  | BODY of instr list

  and func = ident * typ * ident list * instr

  and prog = func list * instr

