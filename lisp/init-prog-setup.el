(require-package 'iedit)

(setq vc-handled-backends (quote (Git RCS CVS SVN SCCS Hg Mtn Arch)))

(setq-default c-basic-indent 2)
(setq-default c-basic-offset 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
;(setq-default indent-tabs-mode t)
(setq-default sh-indentation 2)
(setq-default sh-basic-offset 2)
(setq-default tags-file-name "TAGS")

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-prog-setup)
