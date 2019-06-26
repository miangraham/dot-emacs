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

(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (elisp--preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))
(global-set-key "\C-ce" 'replace-last-sexp)

(provide 'init-elisp)