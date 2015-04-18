(require-package 'diminish)
(require-package 'dtrt-indent)
(require-package 'flycheck)
(require-package 'iedit)
(require-package 'whitespace-cleanup-mode)

(setq-default c-basic-indent 2)
(setq-default c-basic-offset 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
;(setq-default indent-tabs-mode t)
(setq-default sh-indentation 2)
(setq-default sh-basic-offset 2)
(setq-default tags-file-name "TAGS")

(dtrt-indent-mode)

(add-hook 'prog-mode-hook 'turn-on-whitespace-cleanup-mode)
(after-load 'whitespace-cleanup-mode (diminish 'whitespace-cleanup-mode))

(after-load 'abbrev (diminish 'abbrev-mode))

(provide 'init-prog-setup)
