;; ------------------------C#----------------------------

(add-to-list 'load-path "~/.emacs.d/elisp/csharp")
(require 'csharp-mode)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(provide 'csharp-config)
