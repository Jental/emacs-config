;; ------------------Area9 flow----------------------

(require 'a9flow-mode)
(setq auto-mode-alist
      (append '(("\\.flow$" . a9flow-mode)) auto-mode-alist))
(setq a9flow-basedir "d:\\work\\area9\\svn\\")
(setq a9flow-include-dirs '("d:\\work\\area9\\svn\\" "d:\\work\\area9\\flow-svn\\lib\\"))
(setq a9flow-compiler-basedir "d:\\work\\area9\\flow-svn\\")
(setq a9flow-projects
      '(("smartbuilder" "smartbuilder/smartbuilder.flow" ("--swf smartbuilder.swf" "--debug"))
        ("smartbook" "smartbook/smartbook.flow" ("--swf smartbook.swf" "--debug"))
        ("learnsmart" "learnsmart/learnsmart.flow" ("--swf learnsmart.swf" "--debug"))
        ("nejm_test" "tests/test_massnejmimport.flow" ("--swf test.swf" "--debug"))
        ("pexam_test" "tests/test_practiceexam.flow" ("--swf test.swf" "--debug"))
        ("testrandomquiz" "tests/testrandomquiz.flow" ("--swf test.swf" "--debug"))
        ("learningtree_test" "tests/test_learningtree.flow" ("--swf test.swf" "--debug"))
        ("learningtree_test2" "tests/testtreeofknowledge.flow" ("--swf test.swf" "--debug"))
        ("resizing_test" "tests/test_resizing.flow" ("--swf test.swf" "--debug"))
        ("resizing_test2" "tests/test_resizing_2.flow" ("--swf test.swf" "--debug"))
        ("test" "test.flow" ("--swf test.swf" "--debug"))
        ("probe_editor" "tests/probe_editor.flow" ("--swf probe_editor.swf" "--debug"))
        ("image_dsz" "tests/imageonfront_deserialization.flow" ("--swf test.swf" "--debug"))
        ))
(add-hook 'a9flow-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq hide-region-before-string "")
            (setq hide-region-after-string "")
            (local-set-key (kbd "C-c a") 'a9flow-compile)
            (local-set-key (kbd "C-c p") 'a9flow-compile-project-ido)))
(add-hook 'a9flow-mode-hook 'whitespace-mode)

(load-file "~/.emacs.d/elisp/a9flow-flymake.el")

(provide 'a9flow-config)
