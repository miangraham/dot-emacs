(use-package js2-mode
  :mode ("\\.js?\\'" . js2-mode)
  :config
  (setq-default js-indent-level 2
                js2-mode-show-parse-errors nil
                js2-mode-show-strict-warnings nil)

  (use-package prettier-js
    :config
    ;; (setq prettier-target-mode "js2-mode")
    ;; (setq prettier-js-args '("--single-quote"
    ;;                          "--tab-width" "2"
    ;;                          "--bracket-spacing" "false"
    ;;                          "--print-width" "100"))
    ;; (add-hook 'js2-mode-hook 'prettier-js-mode)
    )

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
          (setq-local flycheck-javascript-eslint-executable eslint))))

    (add-hook 'flycheck-mode-hook 'use-eslint-from-node-modules)
    (add-hook 'flycheck-before-syntax-check-hook 'flycheck-clear)))

(use-package json-mode
  :mode (("\\.json?\\'" . json-mode)))

(provide 'init-javascript)