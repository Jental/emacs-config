;; ------------------Growl----------------------

(defvar growl-program "~/.emacs.d/elisp/growlnotify.sh")

(defun growl (client title message &optional id)
  (if (eq id nil)
      (w32-shell-execute "open" "sh" (concat growl-program " " client " " title " " message " nil") 0)
      (w32-shell-execute "open" "sh" (concat growl-program " " client " " title " " message " " id) 0)))

(provide 'growl-config)
