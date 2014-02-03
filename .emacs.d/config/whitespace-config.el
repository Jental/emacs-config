;;------------------- Whitespace ----------------------
(require 'whitespace)
(setq-default whitespace-style '(face spaces tabs space-mark tab-mark))
;;(set-face-background 'whitespace-tab "#e6e5ff")
(set-face-foreground 'whitespace-tab "#ccccff")
;;(set-face-background 'whitespace-space "#e6e5ff")
(set-face-foreground 'whitespace-space "#ccccff")
;;(setq whitespace-display-mappings '((space-mark ?\  [?.]) (newline-mark ?\n [?$ ?\n]) (tab-mark ?\t [?\\ ?\t])))
(global-whitespace-mode t) ;; global auto enable

(provide 'whitespace-config)
