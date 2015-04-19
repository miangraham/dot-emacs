(require-package 'aggressive-indent)
(require-package 'rainbow-delimiters)

(add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode)
(add-hook 'emacs-lisp-mode-hook 'projectile-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode-enable)

(provide 'init-elisp)
