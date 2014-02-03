;; ------------------Jabber ----------------------

(add-to-list 'load-path "~/.emacs.d/elisp/emacs-jabber")

(require 'jabber-autoloads)

(setq starttls-extra-arguments '("--insecure"))
(setq gnutls-min-prime-bits 1024)
(setq gnutls-log-level 0)
(defun gnutls-available-p nil) ;; Forcefully use starttls (Fixes "STARTTLS negotiation failed" problem)

;; Make jabber.el notify through growl when I get a new message
(setq jabber-message-alert-same-buffer nil)
(defun pg-jabber-growl-notify (from buf text proposed-alert)
  "(jabber.el hook) Notify of new Jabber chat messages via Growl"
  (when (or jabber-message-alert-same-buffer
            (not (memq (selected-window) (get-buffer-window-list buf))))
    (if (jabber-muc-sender-p from)
        (growl "jabber"
               (format "(PM) %s" (jabber-jid-displayname (jabber-jid-user from)))
               (format "%s: %s" (jabber-jid-resource from) text)
               (format "jabber-from-%s" (jabber-jid-resource from)))
        (growl "jabber"
               (format "%s" (jabber-jid-displayname from))
               text
               "jabber-from-unknown"))))
(add-hook 'jabber-alert-message-hooks 'pg-jabber-growl-notify)

;;Same as above, for groupchats
(defun pg-jabber-muc-growl-notify (nick group buf text proposed-alert)
  "(jabber.el hook) Notify of new Jabber MUC messages via Growl"
  (when (or jabber-message-alert-same-buffer
            (not (memq (selected-window) (get-buffer-window-list buf))))
    (if nick
        (when (or jabber-muc-alert-self
                  (not (string=

                        nick (cdr (assoc group *jabber-active-groupchats*)))))
          (growl "jabber"
                 (format "%s" (jabber-jid-displayname group))
                 (format "%s: %s" nick text)
                 (format "jabber-chat-%s" (jabber-jid-displayname group))))
        (growl "jabber"
               (format "%s" (jabber-jid-displayname group))
               text
               "jabber-chat-unknown"))))

(add-hook 'jabber-alert-muc-hooks 'pg-jabber-muc-growl-notify)

(provide 'jabber-config)
