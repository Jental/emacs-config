;; ------------------CoffeeScript----------------------

(require 'coffee-mode)
(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace

(defun coffee-mode-save-hook ()
  (progn
    (save-excursion
      (goto-line 1)
      (setq p1 (line-beginning-position))
      (setq p2 (line-end-position))
      (setq first-line (buffer-substring-no-properties p1 p2)))
    (unless (string= first-line "#!/usr/bin/coffee")
      (if (string-match "/coffee/" (file-name-directory (directory-file-name (buffer-file-name))))
          (progn
            (setq coffee-js-directory "../js/")
            (call-interactively 'coffee-compile-file)
            (setq coffee-js-directory ""))
          (call-interactively 'coffee-compile-file)))))

(add-hook 'coffee-mode-hook 'replace-tabs-hook)
(add-hook 'after-save-hook 
          (lambda ()
            (when (equal major-mode 'coffee-mode)
              (coffee-mode-save-hook))))

(provide 'coffee-config)
