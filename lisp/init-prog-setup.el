(setq-default c-basic-indent 2
              c-basic-offset 2
              default-tab-width 2
              indent-tabs-mode nil ;;t
              sh-indentation 2
              sh-basic-offset 2
              tags-file-name "TAGS")

(use-package editorconfig
  :diminish editorconfig-mode
  :config (editorconfig-mode 1))

(use-package flycheck
  :commands flycheck-mode
  :init
  (add-hook 'prog-mode-hook 'flycheck-mode)
  :config
  (setq-default flycheck-emacs-lisp-load-path 'inherit
                flycheck-disabled-checkers '(javascript-jshint
                                             javascript-gjslint
                                             javascript-standard
                                             emacs-lisp-checkdoc))
  (setq flycheck-idle-change-delay 5))

(use-package rainbow-delimiters
  :config (add-hook 'prog-mode-hook 'rainbow-delimiters-mode-enable))

(use-package web-mode
  :mode ("\\.html?\\'" . web-mode)
  :config
  (setq web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-markup-indent-offset 2))

(use-package ws-butler
  :commands ws-butler-mode
  :diminish ws-butler-mode
  :init
  (add-hook 'prog-mode-hook 'ws-butler-mode))

(use-package yasnippet
  :commands yas-minor-mode-on
  :diminish yas-minor-mode
  :init
  (add-hook 'prog-mode-hook 'yas-minor-mode-on)
  :config
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c y") 'yas-expand))

(use-package company
  :diminish company-mode)

(use-package lsp-mode
  :commands lsp
  :diminish company-mode
  :config
  (require 'lsp-clients)
  (setq lsp-prefer-flymake nil)
  )

;; (use-package lsp-ui)

;;   :config
;;   (use-package company-lsp
;;     :config
;;     (push 'company-lsp company-backends)))

(provide 'init-prog-setup)
