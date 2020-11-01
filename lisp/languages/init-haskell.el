(use-package haskell-mode
  :mode ("\\.hs?\\'" . haskell-mode)
  :init
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  :config
  (setq haskell-process-type 'stack-ghci
        haskell-interactive-popup-errors nil))

(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'dante-mode))

(provide 'init-haskell)
