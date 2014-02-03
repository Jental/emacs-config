;; ------------------- Erlang -------------------------

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))

(setq load-path (cons "d:/PROGRA~1/erl5.9.2/lib/tools-2.6.8/emacs" load-path))
(setq erlang-root-dir "d:/PROGRA~1/erl5.9.2/")
(setq exec-path (cons "d:/PROGRA~1/erl5.9.2/bin" exec-path))
(require 'erlang-start)

(defun my-erlang-mode-hook ()
 ;;add erlang functions to an imenu menu
 (imenu-add-to-menubar "imenu")
 ;;customize keys
 (local-set-key [return] 'newline-and-indent)
)
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)
(add-hook 'erlang-mode-hook 'replace-tabs-hook)

(setq erlang-indent-level 2)

;; distel
;;(add-to-list 'load-path "c:/PROGRA~1/erl5.9.2/lib/distel/elisp")
;;(require 'distel)
;;(distel-setup)

;;A number of the erlang-extended-mode key bindings are useful in the shell too
;; (defconst distel-shell-keys
;;  '(("\C-\M-i"   erl-complete)
;;    ("\M-?"      erl-complete)
;;    ("\M-."      erl-find-source-under-point)
;;    ("\M-,"      erl-find-source-unwind)
;;    ("\M-*"      erl-find-source-unwind)
;;    )
;;  "Additional keys to bind when in Erlang shell.")

;; (add-hook 'erlang-shell-mode-hook
;;  (lambda ()
;;   ;; add some Distel bindings to the Erlang shell
;;    (dolist (spec distel-shell-keys)
;;      (define-key erlang-shell-mode-map (car spec) (cadr spec)))))

;; (defun flymake-erlang-init ()
;;  (let* ((temp-file (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
;;          (local-file (file-relative-name temp-file
;;                                          (file-name-directory buffer-file-name))))
;;    (list "escript" (list "c:/Users/Jental/AppData/Roaming/.emacs.d/eflymake.erl" local-file))))

;; (add-to-list 'flymake-allowed-file-name-masks
;;              '("\\.erl\\'" flymake-erlang-init))

;; (defun my-erlang-mode-hook ()
;;         (flymake-mode 1))
;; (add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

(provide 'erlang-config)
