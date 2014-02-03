;; ------------------Localization----------------------

(set-language-environment 'Russian)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-16le-dos)
(set-keyboard-coding-system 'utf-8)
(define-coding-system-alias 'windows-1251 'cp1251)

(prefer-coding-system 'utf-8)
(prefer-coding-system 'windows-1251)
(prefer-coding-system 'koi8-r-dos)
(prefer-coding-system 'cp866-dos)
(prefer-coding-system 'utf-8-unix)

(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;;(codepage-setup 1251)
;;(define-coding-system-alias 'windows-1251 'cp1251)
;;(define-coding-system-alias 'win-1251 'cp1251)
;;(set-input-mode nil nil 'We-will-use-eighth-bit-of-input-byte)

(provide 'locale-config)

