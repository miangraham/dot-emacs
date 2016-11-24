(use-package haskell-mode
  :mode ("\\.hs?\\'" . haskell-mode)
  :init
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  :config
  (setq haskell-process-type 'stack-ghci))

(provide 'init-haskell)
