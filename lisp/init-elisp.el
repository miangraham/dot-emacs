(use-package aggressive-indent
  :commands aggressive-indent-mode
  :diminish aggressive-indent-mode
  :init (add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode))

(use-package smartparens
  :commands smartparens-mode
  :diminish smartparens-mode
  :init
  (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
  :config
  (require 'smartparens-config))

(provide 'init-elisp)
