(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :hook (rust-mode . lsp)
  :custom
  (rust-indent-offset 2)
  (rust-format-on-save nil)
  (lsp-rust-server 'rust-analyzer)
  (lsp-rust-analyzer-server-display-inlay-hints 't)
  (lsp-rust-analyzer-display-parameter-hints nil)
  (lsp-rust-analyzer-display-chaining-hints 't)
  (lsp-rust-show-hover-context nil)
  ;; lsp-rust-analyzer-server-command
  (lsp-file-watch-threshold 10000)
  (lsp-enable-imenu nil)
  (lsp-enable-xref t)
  (lsp-eldoc-enable-hover nil)
  (lsp-modeline-code-actions-enable nil)
  (lsp-modeline-diagnostics-enable nil)
  ;; (lsp-eldoc-render-all t)
  (lsp-ui-sideline-enable t)
  (lsp-ui-sideline-show-hover nil)
  (lsp-ui-sideline-show-diagnostics nil)
  (lsp-ui-sideline-show-code-actions nil)
  (lsp-ui-peek-enable nil)
  (lsp-ui-doc-enable nil)
  (lsp-ui-imenu-enable nil)
  )

(use-package flycheck-rust
  :config
  (add-hook 'rust-mode-hook #'flycheck-rust-setup)
  )

(use-package toml-mode)

(provide 'init-rust)
