(use-package js2-mode
  :mode ("\\.js?\\'" . js2-mode)
  :config
  (setq-default js-indent-level 2
                js2-mode-show-parse-errors nil
                js2-mode-show-strict-warnings nil)

  (use-package flycheck
    :config
    (defun use-eslint-from-node-modules ()
      (let* ((root (locate-dominating-file
                    (or (buffer-file-name) default-directory)
                    "node_modules"))
             (eslint (and root
                          (expand-file-name "node_modules/eslint/bin/eslint.js"
                                            root))))
        (when (and eslint (file-executable-p eslint))
          (setq-local flycheck-javascript-eslint-executable eslint)
          (setq-local eslint-fix-executable eslint)
          )))

    (add-hook 'flycheck-mode-hook 'use-eslint-from-node-modules)
    (add-hook 'flycheck-before-syntax-check-hook 'flycheck-clear))

  (use-package eslint-fix
    :config
    (add-hook 'js2-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))
  )

(use-package json-mode
  :mode (("\\.json?\\'" . json-mode)))

(provide 'init-javascript)
