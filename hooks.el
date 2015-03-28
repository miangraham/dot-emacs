;; Indentation
;(setq indent-tabs-mode t)
;(setq-default indent-tabs-mode t)
;(setq-default default-tab-width 4)
;(setq-default tab-width 4)
;(setq-default c-basic-indent 2)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq-default c-basic-indent 2)
(setq-default c-basic-offset 2)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
;(setq-default indent-tabs-mode t)
(setq-default sh-indentation 2)
(setq-default sh-basic-offset 2)

(add-hook 'html-mode-hook (lambda () (local-set-key [tab] 'indent-for-tab-command)))
(add-hook 'html-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'html-mode-hook (lambda () (setq indent-tabs-mode 1)))
