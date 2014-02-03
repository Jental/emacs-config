(custom-set-variables
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default))))

(desktop-save-mode 1)           ;; To automatically save session on exit
(setq-default truncate-lines t) ;; To disable line wrap
(delete-selection-mode 1)       ;; To be able to delete selection
(w32-send-sys-command 61488)    ;; to start maximized
(menu-bar-mode 0)               ;; Hides unneeded ui elements
(scroll-bar-mode 0)             ;; No scrollbar
(blink-cursor-mode 0)           ;; No cursor blink
(column-number-mode t)          ;; Shows column number in the mode-line
(show-paren-mode t)             ;; Matching parentheses highlighting
(tool-bar-mode 0)               ;; Hides toolbar

(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq shell-file-name "d:/cygwin/bin/bash.exe") ;; cygwin bash as a shell

(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'my-functions)          ;; useful functions

;; -------- External configurations -----------
(add-to-list 'load-path "~/.emacs.d/config")

(require 'locale-config)         ;; localiztion
;;(require 'erlang-config)       ;; erlang-mode
(require 'flymake-config)        ;; flymake
(require 'whitespace-config)     ;; whitespace-mode
(require 'elisp-config)          ;; emacs-lisp-mode
(require 'fsharp-config)         ;; fsharp-mode
(require 'growl-config)          ;; growl notifications
(require 'jabber-config)         ;; jabber.el
(require 'juick-config)          ;; juick functions
(require 'notes-config)          ;; *notes* buffer
(require 'csharp-config)         ;; csharp-mode
(require 'yarl-config)           ;; yarl-mode
(require 'haskell-config)        ;; haskell-mode
(require 'coffee-config)         ;; coffee-mode
(require 'hide-region-config)    ;; hide-region (my version)
(require 'solarized-config)      ;; solarized theme
;; (require 'cedet-config)       ;; cedet tools
(require 'generic-x)             ;; for windows bat files
;; (require 'mozrepl-config)     ;; mozrepl
(require 'a9flow-config)         ;; a9flow-mode
;; (require 'icicles-config)     ;; icicles
(require 'recentf-config)        ;; recent files
(require 'web-mode-config)       ;; web-mode (php)
(require 'joomla-config)         ;; functions for joomla development
(require 'geben-config)          ;; geben (php debugging)
(require 'ido-config)            ;; ibuffer + ido
(require 'highlight-line)        ;; line highlighting
;; (require 'mysql-config)       ;; mysql-mode
(require 'tramp-config)          ;; tramp
(require 'saveplace-config)      ;; when you visit a file, point goes to the last place where it was when you previously visited the same file.
(require 'shortcuts-config)      ;; shortcuts
