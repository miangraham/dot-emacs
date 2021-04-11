(setq-default c-basic-indent 2
              c-basic-offset 2
              default-tab-width 2
              indent-tabs-mode nil ;;t
              sh-indentation 2
              sh-basic-offset 2
              tags-file-name "TAGS")

(use-package editorconfig
  :diminish
  :config (editorconfig-mode 1))

(use-package direnv
  :config
  (direnv-mode)
  :custom
  (direnv-always-show-summary nil))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode-enable))

(use-package ws-butler
  :diminish
  :hook (prog-mode . ws-butler-mode))

(use-package flycheck
  :hook (prog-mode . flycheck-mode)
  :config
  (setq-default flycheck-emacs-lisp-load-path 'inherit
                flycheck-disabled-checkers '(javascript-jshint
                                             javascript-gjslint
                                             javascript-standard
                                             emacs-lisp-checkdoc))
  (setq flycheck-idle-change-delay 5))

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode-on)
  :diminish yas-minor-mode
  :config
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c y") 'yas-expand))

(use-package lsp-mode
  :after rust-mode
  :commands lsp
  :hook (rust-mode . lsp)
  :custom
  (lsp-diagnostics-provider :flycheck)
  (lsp-completion-provider :none)
  (lsp-enable-indentation nil)
  (lsp-modeline-code-actions-enable nil)
  (lsp-before-save-edits nil)
  )

(provide 'init-prog-setup)
