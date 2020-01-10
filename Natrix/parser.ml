
module MenhirBasics = struct
  
  exception Error
  
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
    | ID of (
# 7 "parser.mly"
       (string)
# 36 "parser.ml"
  )
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
    | CST of (
# 6 "parser.mly"
       (Ast.constant)
# 56 "parser.ml"
  )
    | BY
    | BOOLTYPE
    | AS
    | ARRAY
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState136
  | MenhirState133
  | MenhirState131
  | MenhirState127
  | MenhirState122
  | MenhirState114
  | MenhirState112
  | MenhirState110
  | MenhirState109
  | MenhirState107
  | MenhirState106
  | MenhirState103
  | MenhirState100
  | MenhirState97
  | MenhirState93
  | MenhirState90
  | MenhirState87
  | MenhirState85
  | MenhirState82
  | MenhirState79
  | MenhirState76
  | MenhirState74
  | MenhirState69
  | MenhirState63
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState26
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState18
  | MenhirState17
  | MenhirState15
  | MenhirState14
  | MenhirState10
  | MenhirState7
  | MenhirState4
  | MenhirState3

# 1 "parser.mly"
  
  open Ast

# 135 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_SEMICOLON_instr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_instr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (s : 'tv_separated_nonempty_list_SEMICOLON_instr_)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_body = 
# 46 "parser.mly"
                                                                             ( BODY s )
# 160 "parser.ml"
             in
            _menhir_goto_body _menhir_env _menhir_stack _menhir_s _v) : 'freshtv530)) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_instr)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_instr)) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_instr)), _, (xs : 'tv_separated_nonempty_list_SEMICOLON_instr_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_instr_ = 
# 243 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 180 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_instr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)) : 'freshtv540)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv553 * 'tv_option_NEWLINE_) * _menhir_state * 'tv_list_func_) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * 'tv_option_NEWLINE_) * _menhir_state * 'tv_list_func_) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv547 * 'tv_option_NEWLINE_) * _menhir_state * 'tv_list_func_) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (_1 : 'tv_option_NEWLINE_)), _, (f : 'tv_list_func_)), _, (s : 'tv_separated_nonempty_list_SEMICOLON_instr_)) = _menhir_stack in
            let _4 = () in
            let _v : (
# 31 "parser.mly"
      (Ast.prog)
# 199 "parser.ml"
            ) = 
# 36 "parser.mly"
                                                                            ( f, BODY s )
# 203 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv545) = _menhir_stack in
            let (_v : (
# 31 "parser.mly"
      (Ast.prog)
# 210 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
            let (_v : (
# 31 "parser.mly"
      (Ast.prog)
# 217 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
            let ((_1 : (
# 31 "parser.mly"
      (Ast.prog)
# 224 "parser.ml"
            )) : (
# 31 "parser.mly"
      (Ast.prog)
# 228 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv542)) : 'freshtv544)) : 'freshtv546)) : 'freshtv548)) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv551 * 'tv_option_NEWLINE_) * _menhir_state * 'tv_list_func_) * _menhir_state * 'tv_separated_nonempty_list_SEMICOLON_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | _ ->
        _menhir_fail ()

and _menhir_goto_body : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_body -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv507 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv505 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (i1 : 'tv_ident)), _, (e : 'tv_expr)), _, (b1 : 'tv_body)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_instr = 
# 109 "parser.mly"
                                                                         ( IFOR (i1, e, b1) )
# 257 "parser.ml"
         in
        _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv515 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv509 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | FOR ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | IF ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | NEWLINE ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | PRINT ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | VAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv510)
        | DBRACE | EOF | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv511 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (b1 : 'tv_body)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 107 "parser.mly"
                                                              ( IIT(e1,b1, BODY []) )
# 307 "parser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv513 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv519 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv517 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body)) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (b1 : 'tv_body)), _, (b2 : 'tv_body)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_instr = 
# 108 "parser.mly"
                                           ( IIT(e1,b1,b2) )
# 329 "parser.ml"
         in
        _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv527 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__))) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv525 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__))) * _menhir_state * 'tv_body) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, (t : 'tv_typ)), _, (i1 : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_VIRGULA_ident__)), _, (b : 'tv_body)) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_func = let s = 
# 232 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 345 "parser.ml"
         in
        
# 40 "parser.mly"
                                                                                            (i1,s,b)
# 350 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv523) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_func) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_func) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DEF ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | CST _ | EPAREN | ESQUARE | FOR | ID _ | IF | PRINT | RETURN | TYPE | VAR ->
            _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv522)) : 'freshtv524)) : 'freshtv526)) : 'freshtv528)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState14 | MenhirState122 | MenhirState109 | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NEWLINE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_instr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv485 * _menhir_state * 'tv_instr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (c : 'tv_instr)) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_body = 
# 45 "parser.mly"
                                ( c )
# 401 "parser.ml"
                 in
                _menhir_goto_body _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_instr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)
    | MenhirState133 | MenhirState127 | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | FOR ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | IF ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | PRINT ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | VAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv498)
        | DBRACE | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv499 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_instr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_instr_ = 
# 241 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 461 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_instr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv501 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv502)) : 'freshtv504)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instr_simples : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instr_simples -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv475 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILLED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv471 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv467 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | EPAREN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | ESQUARE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | ID _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv468)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv469 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv473 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
    | MenhirState133 | MenhirState14 | MenhirState127 | MenhirState106 | MenhirState122 | MenhirState109 | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (c : 'tv_instr_simples)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_instr = 
# 110 "parser.mly"
                                                                                            ( c )
# 539 "parser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)) : 'freshtv480)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_instr_simples) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
    | _ ->
        _menhir_fail ()

and _menhir_reduce21 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_expr = 
# 73 "parser.mly"
                                                         ( GET(e1,e2) )
# 560 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_VIRGULA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VIRGULA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState21 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VIRGULA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_VIRGULA_expr_) : 'tv_separated_nonempty_list_VIRGULA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_VIRGULA_expr__ = 
# 144 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( x )
# 579 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_VIRGULA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VIRGULA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VIRGULA_expr_) : 'tv_separated_nonempty_list_VIRGULA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VIRGULA_expr_ = 
# 243 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 596 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRGULA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | EPAREN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | ESQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | FOR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | ID _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | IF ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | PRINT ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | RETURN ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | TYPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | VAR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv456)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)

and _menhir_goto_loption_separated_nonempty_list_VIRGULA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_VIRGULA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv441) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv439) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (xs : 'tv_loption_separated_nonempty_list_VIRGULA_expr__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_optarg = let s = 
# 232 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 902 "parser.ml"
             in
            
# 62 "parser.mly"
                                                    (s)
# 907 "parser.ml"
             in
            _menhir_goto_optarg _menhir_env _menhir_stack _v) : 'freshtv440)) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv443) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv449 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv447 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_VIRGULA_expr__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = let s = 
# 232 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 935 "parser.ml"
             in
            
# 74 "parser.mly"
                                                       ( LIST s )
# 940 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv451 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 | MenhirState31 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv230)
        | DPAREN | DSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_VIRGULA_expr_ = 
# 241 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 1014 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_VIRGULA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | AND | DIF | DIVIDIR | DO | DPAREN | DSQUARE | FILLED | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | NEWLINE | OF | OR | THEN | VEZES | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 81 "parser.mly"
                                                                                        ( MUL )
# 1040 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1045 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)) : 'freshtv242)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv244)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | DO | DPAREN | DSQUARE | FILLED | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 90 "parser.mly"
                                                                                        ( OOR )
# 1137 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1142 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DIF | DO | DPAREN | DSQUARE | FILLED | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 80 "parser.mly"
                                                                                        ( SUB )
# 1172 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1177 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | AND | DIF | DIVIDIR | DO | DPAREN | DSQUARE | FILLED | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | NEWLINE | OF | OR | THEN | VEZES | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 82 "parser.mly"
                                                                                        ( DIV )
# 1203 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1208 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | IGUAL | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 88 "parser.mly"
                                                                                        ( LE )
# 1242 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1247 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DIF | DO | DPAREN | DSQUARE | FILLED | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 79 "parser.mly"
                                                                                        ( ADD )
# 1277 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1282 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | IGUAL | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 87 "parser.mly"
                                                                                        ( LT )
# 1316 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1321 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | IGUAL | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 86 "parser.mly"
                                                                                        ( GE )
# 1355 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1360 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | IGUAL | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 85 "parser.mly"
                                                                                        ( GT )
# 1394 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1399 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 83 "parser.mly"
                                                                                        ( EQ )
# 1443 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1448 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | IGUAL | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 84 "parser.mly"
                                                                                        ( DF )
# 1482 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1487 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DPAREN | DSQUARE | FILLED | NEWLINE | OF | OR | THEN | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let eop = 
# 89 "parser.mly"
                                                                                        ( OAND )
# 1533 "parser.ml"
             in
            
# 68 "parser.mly"
                                                                                ( EOP(eop,e1,e2) )
# 1538 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 71 "parser.mly"
                                      ( Eunop (Unot, e1) )
# 1573 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 70 "parser.mly"
                                                                                          (Eunop (Uneg, e))
# 1628 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv331 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 69 "parser.mly"
                                                                                  ( e )
# 1682 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv345 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 1717 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv341 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 1733 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 1740 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (n1 : (
# 6 "parser.mly"
       (Ast.constant)
# 1745 "parser.ml"
            ))), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 67 "parser.mly"
                                                                 ( Seq(n1,e2) )
# 1753 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv343 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 1783 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv351 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv347 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv348)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv349 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv357 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv353 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _, (i1 : 'tv_ident)), _), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 100 "parser.mly"
                                                   (ARR(i1,e1,e2))
# 1887 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv355 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv363 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x1 : 'tv_ident)), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 101 "parser.mly"
                                                       ( CrSeq(x1,e1) )
# 1938 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 97 "parser.mly"
                    ( RET(e) )
# 1988 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 95 "parser.mly"
                                                                                    ( IPRI(e1) )
# 2023 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv383 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv379 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | INTTYPE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv380)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv381 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv389 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv385 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (i1 : 'tv_ident)), _), _, (e1 : 'tv_expr)), _, (t : 'tv_typ)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 102 "parser.mly"
                                                              (COMPARRAY(i1,e1,t,e2))
# 2151 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv387 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv395 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv391 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (i1 : 'tv_ident)), _, (t : 'tv_typ)), _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 99 "parser.mly"
                                                                                   ( Assign(i1,t,e) )
# 2203 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv393 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv401 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv397 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (i1 : 'tv_ident)), _, (a : 'tv_instr_simples)), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr_simples = 
# 98 "parser.mly"
                                                                                           ( FIL(i1,a,e1) )
# 2256 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv399 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState133 | MenhirState14 | MenhirState106 | MenhirState127 | MenhirState122 | MenhirState109 | MenhirState114 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv404)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_instr_simples = 
# 103 "parser.mly"
              ( EVAL(e) )
# 2321 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DEFINED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv411 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | EPAREN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | ESQUARE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | ID _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv412)
            | AND | DIF | DIVIDIR | ESQUARE | FILLED | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | NEWLINE | OR | VEZES ->
                _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv413 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv425 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | FILLED | NEWLINE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv421 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_instr_simples = 
# 96 "parser.mly"
                                                                                ( ArrValue(e1,e2,e3) )
# 2445 "parser.ml"
             in
            _menhir_goto_instr_simples _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv423 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | FOR ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | IF ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | NEWLINE ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | PRINT ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | VAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv428)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv437 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | DIF ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDIR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv433 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FOR ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | IF ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NEWLINE ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | PRINT ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | VAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv434)
        | ESQUARE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MAIS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MENOS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | VEZES ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv435 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRGULA_ident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VIRGULA_ident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VIRGULA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_VIRGULA_ident_) : 'tv_separated_nonempty_list_VIRGULA_ident_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_VIRGULA_ident__ = 
# 144 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( x )
# 2615 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_VIRGULA_ident__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VIRGULA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VIRGULA_ident_) : 'tv_separated_nonempty_list_VIRGULA_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VIRGULA_ident_ = 
# 243 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 2632 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRGULA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
    | _ ->
        _menhir_fail ()

and _menhir_goto_optarg : _menhir_env -> 'ttv_tail -> 'tv_optarg -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
    let (_v : 'tv_optarg) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
    let ((s : 'tv_optarg) : 'tv_optarg) = _v in
    ((let (_menhir_stack, _menhir_s, (i : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_expr = 
# 72 "parser.mly"
                                                              (if s=[] then (Var i) else  CALL(i,s) )
# 2650 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)

and _menhir_goto_loption_separated_nonempty_list_VIRGULA_ident__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_VIRGULA_ident__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv215 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv211 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv207 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | FOR ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | IF ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | NEWLINE ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | PRINT ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | VAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv209 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv213 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)

and _menhir_reduce40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_VIRGULA_expr__ = 
# 142 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2720 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_VIRGULA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce3 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 2727 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (c : (
# 6 "parser.mly"
       (Ast.constant)
# 2733 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_expr = 
# 66 "parser.mly"
                (Const c )
# 2738 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | EPAREN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | ESQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | ID _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 2846 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 7 "parser.mly"
       (string)
# 2856 "parser.ml"
    )) : (
# 7 "parser.mly"
       (string)
# 2860 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 114 "parser.mly"
          ( id )
# 2865 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | DPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState10 in
                ((let _v : 'tv_loption_separated_nonempty_list_VIRGULA_ident__ = 
# 142 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2894 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_VIRGULA_ident__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv157 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv161 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState17 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | EPAREN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | ESQUARE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                | ID _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv162)
            | BOOLTYPE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | INTTYPE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | PRINT ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | RETURN ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | VAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IGUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv169 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState20 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                | EPAREN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | ESQUARE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | ID _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv170)
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState133 | MenhirState14 | MenhirState106 | MenhirState127 | MenhirState122 | MenhirState109 | MenhirState114 | MenhirState112 | MenhirState107 | MenhirState103 | MenhirState100 | MenhirState17 | MenhirState97 | MenhirState93 | MenhirState90 | MenhirState85 | MenhirState82 | MenhirState79 | MenhirState20 | MenhirState76 | MenhirState74 | MenhirState21 | MenhirState69 | MenhirState22 | MenhirState63 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState26 | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | DPAREN ->
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv178)
        | AND | DIF | DIVIDIR | DO | DPAREN | DSQUARE | ESQUARE | FILLED | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | NEWLINE | OF | OR | THEN | VEZES | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optarg = 
# 61 "parser.mly"
                                                    ([])
# 3054 "parser.ml"
             in
            _menhir_goto_optarg _menhir_env _menhir_stack _v) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | MenhirState131 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VIRGULA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv191 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv192)
        | DPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_VIRGULA_ident_ = 
# 241 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 3120 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_VIRGULA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | _ ->
        _menhir_fail ()) : 'freshtv200)) : 'freshtv202)

and _menhir_run110 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState21 in
        let (_v : (
# 6 "parser.mly"
       (Ast.constant)
# 3159 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 3170 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv148)
        | AND | DIF | DIVIDIR | DSQUARE | ESQUARE | IGUAL | MAIOR | MAIORIGUAL | MAIS | MENOR | MENORIGUAL | MENOS | OR | VEZES | VIRGULA ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 3196 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | DSQUARE ->
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | EPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ESQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | MENOS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState22 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
        | EPAREN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | ESQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | ID _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv144)
    | NOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState22 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | EPAREN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ESQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv146)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (Ast.constant)
# 3275 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv126)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv135 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILLED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv131 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv127 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | EPAREN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ESQUARE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ID _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv128)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv129 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv133 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IGUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv137 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | EPAREN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ESQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv139 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_func_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_func_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * 'tv_option_NEWLINE_) * _menhir_state * 'tv_list_func_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | EPAREN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | ESQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | FOR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | ID _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | IF ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | PRINT ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | RETURN ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | TYPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | VAR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv120)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_func) * _menhir_state * 'tv_list_func_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_func) * _menhir_state * 'tv_list_func_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_func)), _, (xs : 'tv_list_func_)) = _menhir_stack in
        let _v : 'tv_list_func_ = 
# 213 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 3419 "parser.ml"
         in
        _menhir_goto_list_func_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_typ = 
# 51 "parser.mly"
                                                                                        ( TypInt )
# 3435 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_typ = 
# 52 "parser.mly"
                                                                                         ( TypBool )
# 3449 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * 'tv_func) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * 'tv_option_NEWLINE_) * _menhir_state * 'tv_list_func_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_instr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv21 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_body)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv23 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv25 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv39 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_instr_simples))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv41 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv43 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_typ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv45 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv47 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv53 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * _menhir_state * (
# 6 "parser.mly"
       (Ast.constant)
# 3571 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv101 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv105 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_VIRGULA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv107 * _menhir_state) * _menhir_state * 'tv_typ) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * 'tv_option_NEWLINE_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv114)

and _menhir_reduce38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_func_ = 
# 211 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 3719 "parser.ml"
     in
    _menhir_goto_list_func_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INTTYPE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_goto_option_NEWLINE_ : _menhir_env -> 'ttv_tail -> 'tv_option_NEWLINE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11 * 'tv_option_NEWLINE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEF ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | CST _ | EPAREN | ESQUARE | FOR | ID _ | IF | PRINT | RETURN | TYPE | VAR ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv12)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 31 "parser.mly"
      (Ast.prog)
# 3770 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NEWLINE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_NEWLINE_ = 
# 116 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( Some x )
# 3799 "parser.ml"
         in
        _menhir_goto_option_NEWLINE_ _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4)
    | CST _ | DEF | EPAREN | ESQUARE | FOR | ID _ | IF | PRINT | RETURN | TYPE | VAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_NEWLINE_ = 
# 114 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
    ( None )
# 3808 "parser.ml"
         in
        _menhir_goto_option_NEWLINE_ _menhir_env _menhir_stack _v) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv8)) : 'freshtv10))

# 269 "/Users/diogopinheiro/.opam/default/lib/menhir/standard.mly"
  

# 3821 "parser.ml"
