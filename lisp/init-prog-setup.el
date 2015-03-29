(require-package 'iedit)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq-default c-basic-indent 2)
(setq-default c-basic-offset 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
;(setq-default indent-tabs-mode t)
(setq-default sh-indentation 2)
(setq-default sh-basic-offset 2)
(setq-default tags-file-name "TAGS")

(provide 'init-prog-setup)
