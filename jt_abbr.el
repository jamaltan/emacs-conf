;; -*- coding: utf-8; lexical-binding: t; -*-
;; define abbrev
;; To stop abbrev from expansion, press Ctrl+q before typing space or punctuation.
(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table '(
					    ("tinput" "BY.dom.input_int:$1,size:$2")
					    ("tradio" "TPL.radio_$1,default:0")
					    ("tlist" "<!-- -->")
					    ("thelp" "{$BY.help('help tips')$}")
					    ("goinit" "package main")
					   ))

;; go-mode
(when (boundp 'go-mode-abbrev-table)
  (clear-abbrev-table go-mode-abbrev-table))

(define-abbrev-table 'go-mode-abbrev-table
  '(
    ;; basic
    ("goinit" "package main

import \"fmt\"

func main() {
        fmt.Println(\"3\")
}")
;;     ("fr" "for k, v := range xxx {
;; ▮
;;     }
;; ")
;;     ("f" "func ff(x int) int {
;;     return nil
;; }")
;;     ("p" "fmt.Printf(\"%v\\n\", hh▮)")
;;     ("pl" "fmt.Println(hh▮)")
;;     ("r" "return")
;;     ("st" "string")
;;     ("eq" "==")
;;     ("v" "var x = 3")
;;     ("df" "x := 3")
;;     ("c" "const x = 3")
;;     ("if" "if 4 { 3 }")
;;     ("ie" " if err != nil { panic(err) }")
;;     ("ei" "else if x > 0 { 3 }")
;;     ("else" "else { 3 }")
;;     ("for" "for i := 0; i < 4; i++ { i }")

    ;;comments

    ))

(set-default 'abbrev-mode t)

(setq save-abbrevs nil)
