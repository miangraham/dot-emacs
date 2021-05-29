(require 'use-package)

(use-package aggressive-indent
  :commands aggressive-indent-mode
  :diminish
  :init (add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode))

(use-package smartparens
  :commands smartparens-mode
  :diminish
  :init
  (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
  :config
  (require 'smartparens-config))

(use-package eldoc
  :ensure nil
  :diminish)

(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (elisp--preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))
(global-set-key "\C-ce" 'replace-last-sexp)

(provide 'init-elisp)
