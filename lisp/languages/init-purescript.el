(use-package purescript-mode
  :mode ("\\.purs?\\'" . purescript-mode)
  :functions turn-on-purescript-simple-indentation
  :config
  (use-package psci)
  (defun ps-hook ()
    (turn-on-purescript-simple-indentation)
    (define-key purescript-mode-map (kbd "C-<right>")
      (lambda ()
        (interactive)
        (purescript-move-nested 1)))
    (define-key purescript-mode-map (kbd "C-<left>")
      (lambda ()
        (interactive)
        (purescript-move-nested -1)))
    )
  (add-hook 'purescript-mode-hook 'ps-hook)
  )

(provide 'init-purescript)
