;; Indentation
;(setq indent-tabs-mode t)
;(setq-default indent-tabs-mode t)
;(setq-default default-tab-width 4)
;(setq-default tab-width 4)
;(setq-default c-basic-indent 2)

(setq-default c-basic-indent 2)
(setq-default c-basic-offset 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default sh-indentation 2)
(setq-default sh-basic-offset 2)
(setq-default js-indent-level 2)

(add-hook 'c-mode-hook (lambda () (c-set-offset 'substatement-open 0)))
(add-hook 'csharp-mode-hook (lambda () (setq indent-tabs-mode 1)))
(add-hook 'csharp-mode-hook (lambda () (setq tab-width 4)))
(add-hook 'csharp-mode-hook (lambda () (setq c-basic-offset 4)))
(add-hook 'csharp-mode-hook (lambda () (setq c-basic-indent 4)))
(add-hook 'csharp-mode-hook (lambda () (setq tab-width 4)))
(add-hook 'csharp-mode-hook (lambda () (c-set-offset 'substatement-open 0)))
(add-hook 'csharp-mode-hook (lambda () (c-set-offset 'substatement-open 0)))
(add-hook 'csharp-mode-hook (lambda () (local-set-key (kbd "{") 'self-insert-command)))
;(add-hook 'c-mode-hook (lambda () (setq indent-tabs-mode nil)))
;(add-hook 'c-mode-hook (lambda () (setq tab-width 2)))
;(add-hook 'c-mode-hook (lambda () (setq c-basic-indent 2)))
;(add-hook 'c-mode-hook (lambda () (setq c-basic-offset 2)))

;(add-hook 'c++-mode-hook (lambda () (setq indent-tabs-mode nil)))
;(add-hook 'c++-mode-hook (lambda () (setq tab-width 2)))
;(add-hook 'c++-mode-hook (lambda () (setq c-basic-indent 2)))
;(add-hook 'c++-mode-hook (lambda () (setq c-basic-offset 2)))

;(add-hook 'sh-mode-hook (lambda () (setq sh-indentation 2)))
;(add-hook 'sh-mode-hook (lambda () (setq sh-basic-offset 2)))

;(add-hook 'js-mode-hook (lambda () (setq indent-tabs-mode nil)))
;(add-hook 'js-mode-hook (lambda () (c-set-offset 'case-label '+)))
;(add-hook 'js-mode-hook (lambda () (c-set-offset 'statement-case-open '++)))
;(add-hook 'js-mode-hook (lambda () (c-set-offset 'statement-case-intro '++)))
;(add-hook 'js-mode-hook (lambda () (setq tab-width 2)))
;(add-hook 'js-mode-hook (lambda () (setq c-basic-indent 2)))
;(add-hook 'js-mode-hook (lambda () (setq c-basic-offset 2)))
;(add-hook 'js-mode-hook (lambda () (setq js-indent-level 2)))

(add-hook 'html-mode-hook (lambda () (local-set-key [tab] 'indent-for-tab-command)))
;(add-hook 'html-mode-hook (lambda () (setq tab-width 2)))
;(add-hook 'html-mode-hook (lambda () (setq indent-tabs-mode nil)))

(add-hook 'text-mode-hook
  (function
   (lambda ()
     (setq tab-width 4)
     (define-key text-mode-map "\C-i" 'self-insert-command)
     )))

