;; ------------------MozRepl----------------------

(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)
(defun javascript-custom-setup ()
 (moz-minor-mode 1))
(add-hook 'javascript-mode-hook 'javascript-custom-setup)

(provide 'mozrepl-config)
