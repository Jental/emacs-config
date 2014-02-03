;; ------------------CEDET----------------------

(load-file "~/.emacs.d/elisp/cedet/cedet-devel-load.el")
(require 'semantic/db-javascript)
(nconc semantic-default-submodes '(;;global-semanticdb-minor-mode
                                   ;;global-cedet-m3-minor-mode
                                   ;;global-semantic-decoration-mode
                                   ;;global-semantic-idle-scheduler-mode
                                   ;;global-semantic-idle-summary-mode
                                   ;;global-semantic-idle-completions-mode
))
(semantic-mode 1)

(provide 'cedet-config)
