(require 'use-package)

(use-package yaml-mode
  :mode (("\\.yml?\\'" . yaml-mode)
         ("\\.yaml?\\'" . yaml-mode))
  :config
  (add-hook 'yaml-mode-hook 'flycheck-mode))

(provide 'init-yaml)
