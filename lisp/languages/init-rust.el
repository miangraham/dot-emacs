(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :hook (rust-mode . lsp)
  :config
  (setq-default rust-indent-offset 2
                rust-format-on-save 't
                ;; lsp-rust-server 'rust-analyzer
                )
  )

(use-package flycheck-rust
  :config
  (add-hook 'rust-mode-hook #'flycheck-rust-setup)
  )

(use-package cargo
  :config
  (add-hook 'rust-mode-hook #'cargo-minor-mode)
  (setq cargo-process--command-build "build --release")
  (setq cargo-process--command-run "run --release")
  )

(use-package toml-mode)

(provide 'init-rust)
