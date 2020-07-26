(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :hook (rust-mode . lsp)
  :config
  (setq-default rust-indent-offset 2
                rust-format-on-save 't
                lsp-rust-server 'rust-analyzer
                lsp-ui-sideline-enable nil
                lsp-ui-peek-enable nil
                lsp-ui-doc-enable nil
                lsp-ui-imenu-enable nil

                ;; lsp-rust-analyzer-server-display-inlay-hints 't
                )
  )

(use-package flycheck-rust
  :config
  (add-hook 'rust-mode-hook #'flycheck-rust-setup)
  )

;; (use-package cargo
;;   :config
;;   (add-hook 'rust-mode-hook #'cargo-minor-mode)
;;   (setq cargo-process--command-build "build --release")
;;   (setq cargo-process--command-run "run --release")
;;   )

;; (use-package rustic
;;   :config
;;   (setq-default rustic-format-trigger 'on-save)
;;   (setq-default rustic-lsp-server 'rust-analyzer)
;;   )

(use-package toml-mode)

(provide 'init-rust)
