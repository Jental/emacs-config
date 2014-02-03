;; ------------------Hide-region----------------------

(require 'hide-region)
(global-set-key (kbd "C-c h h") 'hide-region-hide)
(global-set-key (kbd "C-c h u") 'hide-region-unhide-near)
(set-face-background 'hide-region-before-string-face "#f0ffff")
(set-face-background 'hide-region-after-string-face "#f0ffff")

(provide 'hide-region-config)
