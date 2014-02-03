;; ------------------Juick----------------------

(defun juick-thread (id)
  (interactive (list (read-string "thread: ")))
  (jabber-send-message (jabber-read-account) "juick@juick.com/Juick" "" (concat id "+") "")
  (jabber-send-message (jabber-read-account) "juick@juick.com/Juick" "" (concat "S " id) "")
)
(defun juick-thread-region ()
  (interactive)
  (while (and (not (eobp))
              (or (not (char-after (line-beginning-position)))
                  (not (char-equal (char-after (line-beginning-position)) ?#))))
    (forward-line 1))
  (if (char-after (line-beginning-position))
      (juick-thread (buffer-substring (line-beginning-position) (+ (line-beginning-position) 8))))
)
(global-set-key (kbd "C-x C-j t") 'juick-thread-region)

(provide 'juick-config)
