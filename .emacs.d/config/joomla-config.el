;; ------------------Joomla----------------------

(defun rename-joomla-buffer ()
  (setq parent-dir-fullname
        (file-name-directory (directory-file-name (buffer-file-name))))
  (if (string-match "[media | components]/com_" parent-dir-fullname)
      (progn
        (setq parent2-dir-fullname
              (file-name-directory (directory-file-name parent-dir-fullname)))
        (setq file-short-name
              (file-relative-name (buffer-file-name) parent-dir-fullname))
        (if (string-match "/views/" parent-dir-fullname)
            (progn
              (setq parent3-dir-fullname
                    (file-name-directory (directory-file-name parent2-dir-fullname)))
              (rename-buffer
               (generate-new-buffer-name
               (concat
                (file-relative-name parent2-dir-fullname parent3-dir-fullname)
                file-short-name))))
          (rename-buffer
           (generate-new-buffer-name
            (concat
             (file-relative-name parent-dir-fullname parent2-dir-fullname)
             file-short-name)))))))
(add-hook 'find-file-hook 'rename-joomla-buffer)

(provide 'joomla-config)
