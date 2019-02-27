(use-package purescript-mode
  :mode ("\\.purs?\\'" . purescript-mode)
  :config
  (add-hook 'purescript-mode-hook 'ps-hook)
  ;; (add-hook 'purescript-mode-hook 'turn-on-purescript-indent)
  )

(defun ps-hook ()
  (turn-on-purescript-simple-indent)
  (define-key purescript-mode-map (kbd "C-<right>")
    (lambda ()
      (interactive)
      (purescript-move-nested 1)))
  (define-key purescript-mode-map (kbd "C-<left>")
    (lambda ()
      (interactive)
      (purescript-move-nested -1)))
  )

(use-package psci)

(provide 'init-purescript)
