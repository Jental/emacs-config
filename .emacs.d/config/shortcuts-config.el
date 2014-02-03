;; ------------------Shortcuts----------------------

;; To disable some annoying shortcuts
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x DEL"))

;; Navigation
(global-unset-key (kbd "C-n")) ;; I don't use it anyway. C-n now reserwed for navigation commands.
(global-unset-key (kbd "C-p")) ;; For pair
;; Go to line
(global-set-key (kbd "C-n g") 'goto-line)
;; Go to function
(global-set-key (kbd "C-n f") 'imenu)

;;Analogs for shortcuts for RU-ru
;;(global-set-key (kbd "тЇФЛБ▒-x тЇФЛУФВ") 'undo)
;;(global-set-key (kbd "M-тЇФЛБ╛"), 'end-of-buffer)
;; (global-set-key (kbd "M-тЇФЛБб"), 'beginning-of-buffer)

;; To reload file on F2
(defun my-revert-buffer ()
  (interactive)
  (revert-buffer t t))
(global-set-key [f2] 'my-revert-buffer)

(global-set-key (kbd "C-d") 'duplicate-line)
(global-set-key (kbd "C-c c c") 'comment-region)
(global-set-key (kbd "C-c c u") 'uncomment-region)

;; (defun toggle-full-screen ()
;;   (interactive)
;;   (shell-command "emacs_fullscreen.exe"))
;; (global-set-key [f11] 'toggle-full-screen)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x M-b") 'ido-switch-buffer-other-window)

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)

(global-set-key (kbd "C-x p") 'previous-multiframe-window)
(global-set-key (kbd "C-c b") 'rename-buffer)

(global-set-key [f8] 'highlight-or-dehighlight-line)
(global-set-key [f9] 'remove-all-highlight)

(provide 'shortcuts-config)
