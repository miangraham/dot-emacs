(require-package 'aggressive-indent)
(require-package 'diminish)
(require-package 'dtrt-indent)
(require-package 'flycheck)
(require-package 'iedit)
(require-package 'rainbow-delimiters)
(require-package 'whitespace-cleanup-mode)

(setq-default c-basic-indent 2
              c-basic-offset 2
              indent-tabs-mode nil ;;t
              sh-indentation 2
              sh-basic-offset 2
              tags-file-name "TAGS")
(setq default-tab-width 2)

(setq flycheck-idle-change-delay 10)

(setq dtrt-indent-verbosity 0)
(after-load 'dtrt-indent (delete 'dtrt-indent-mode-line-info global-mode-string))
(dtrt-indent-mode)

(add-hook 'prog-mode-hook 'turn-on-whitespace-cleanup-mode)
(after-load 'whitespace-cleanup-mode (diminish 'whitespace-cleanup-mode))

(after-load 'abbrev (diminish 'abbrev-mode))

(provide 'init-prog-setup)
