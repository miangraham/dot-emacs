;; (use-package haskell-mode
;;   :mode ("\\.hs?\\'" . haskell-mode)
;;   :init
;;   (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;;   :config
;;   (setq haskell-process-type 'stack-ghci
;;         haskell-interactive-popup-errors nil))
(use-package intero
  :mode ("\\.hs?\\'" . haskell-mode)
  :init
  (add-hook 'haskell-mode-hook 'intero-mode)
  :config
  (setq company-idle-delay 2))

;; :config
;; (setq haskell-process-type 'stack-ghci
;;       haskell-interactive-popup-errors nil))
(provide 'init-haskell)
