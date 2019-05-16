(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :config
  (setq-default rust-indent-offset 2
                rust-format-on-save 't)
  )

(use-package flycheck-rust
  :config
  (add-hook 'rust-mode-hook 'flycheck-rust-setup)
  )

(provide 'init-rust)
