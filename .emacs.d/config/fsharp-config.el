;; ------------------ F# --------------------------

(add-to-list 'load-path "~/.emacs.d/elisp/fsharp")
(add-to-list 'auto-mode-alist '("\\.fs[iylx]?$" . fsharp-mode))
(autoload 'fsharp-mode "fsharp" "Major mode for editing F# code." t)
(autoload 'run-fsharp "inf-fsharp" "Run an inferior F# process." t)
(setq inferior-fsharp-program "\"c:\\Program Files (x86)\\Microsoft F#\\v4.0\\Fsi.exe\"")
(setq fsharp-compiler "\"c:\\Program Files (x86)\\Microsoft F#\\v4.0\\Fsc.exe\"")

(provide 'fsharp-config)
