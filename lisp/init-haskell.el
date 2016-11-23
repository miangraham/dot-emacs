(require 'init-packages)
(require-package 'haskell-mode)
(require 'haskell-mode)

(setq haskell-process-type 'stack-ghci
      ;; haskell-tags-on-save t
      )

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(provide 'init-haskell)
