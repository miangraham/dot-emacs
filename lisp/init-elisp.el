(declare-function 'require-package "init-packages.el")
(require-package 'aggressive-indent)
(require-package 'rainbow-delimiters)
(require-package 'smartparens)

(require 'smartparens-config)

(add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode)
(add-hook 'emacs-lisp-mode-hook 'projectile-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode-enable)

(provide 'init-elisp)
