(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :custom
  (rust-indent-offset 2)
  (rust-format-on-save t)
  (rust-format-show-buffer nil)
  (rust-format-goto-problem nil)
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
  (lsp-signature-doc-lines 5)
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
  :hook (rust-mode . flycheck-rust-setup))

(use-package ron-mode
  :mode ("\\.ron\\'" . ron-mode))

(use-package toml-mode
  :mode ("\\.toml\\'" . toml-mode))

(provide 'init-rust)
