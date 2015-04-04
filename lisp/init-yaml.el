(require-package 'yaml-mode)

(add-hook 'yaml-mode-hook 'projectile-mode)
(add-hook 'yaml-mode-hook 'flycheck-mode)

(provide 'init-yaml)
