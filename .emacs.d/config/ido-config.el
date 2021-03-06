;; ------------------Ido + Ibuffer----------------------

(autoload 'ibuffer "ibuffer" "List buffers." t)

(require 'ibuffer-vc)

(add-hook 'ibuffer-hook
          (lambda ()
            (ibuffer-vc-set-filter-groups-by-vc-root)
            (unless (eq ibuffer-sorting-mode 'alphabetic)
              (ibuffer-do-sort-by-alphabetic))))

(ido-mode)

(provide 'ido-config)
