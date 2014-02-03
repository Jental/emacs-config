;; ------------------CoffeeScript----------------------

(require 'coffee-mode)
(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(add-hook 'coffee-mode-hook 'replace-tabs-hook)
(add-hook 'after-save-hook 
          (lambda ()
                  (if (equal major-mode 'coffee-mode)
                      (call-interactively 'coffee-compile-file))))

(provide 'coffee-config)
