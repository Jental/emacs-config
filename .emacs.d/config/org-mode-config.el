;; ------------------Org-mode + Babel + Ledger----------------------
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
;;   (R . t)
;;   (ditaa . t)
;;   (dot . t)
   (emacs-lisp . t)
;;   (gnuplot . t)
;;   (haskell . nil)
;;   (latex . t)
   (ledger . t)         ;this is the important one for this tutorial
;;   (ocaml . nil)
;;   (octave . t)
;;   (python . t)
;;   (ruby . t)
;;   (screen . nil)
;;   (sh . t)
;;   (sql . nil)
;;   (sqlite . t)
   ))

(provide 'org-mode-config)
