(use-package purescript-mode
  :mode ("\\.purs?\\'" . purescript-mode)
  :config
  (add-hook 'purescript-mode-hook 'turn-on-purescript-indent)
  )

(use-package psci)

(provide 'init-purescript)
