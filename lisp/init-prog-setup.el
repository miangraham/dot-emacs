(require-package 'diminish)
(require-package 'iedit)
(require-package 'whitespace-cleanup-mode)

(setq vc-handled-backends (quote (Git RCS CVS SVN SCCS Hg Mtn Arch)))

(setq-default c-basic-indent 2)
(setq-default c-basic-offset 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
;(setq-default indent-tabs-mode t)
(setq-default sh-indentation 2)
(setq-default sh-basic-offset 2)
(setq-default tags-file-name "TAGS")

(add-hook 'prog-mode-hook 'turn-on-whitespace-cleanup-mode)
(after-load 'whitespace-cleanup-mode (diminish 'whitespace-cleanup-mode))

(add-hook 'prog-mode-hook (diminish 'abbrev-mode))

(provide 'init-prog-setup)
