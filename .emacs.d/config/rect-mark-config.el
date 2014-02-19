;; ------------------CoffeeScript----------------------

(require 'rect-mark)

(global-set-key (kbd "C-S-SPC") 'rm-set-mark)
(global-set-key (kbd "M-W") 'rm-kill-ring-save)
(global-set-key (kbd "C-S-w") 'rm-kill-region)
(global-set-key (kbd "C-S-y") 'yank-rectangle)
(global-set-key (kbd "<S-delete>") 'delete-rectangle)

(provide 'rect-mark-config)
