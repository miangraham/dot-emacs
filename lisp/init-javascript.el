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
          (setq-local flycheck-javascript-eslint-executable eslint))))

    (add-hook 'flycheck-mode-hook 'use-eslint-from-node-modules)
    (add-hook 'flycheck-before-syntax-check-hook 'flycheck-clear)))

(use-package json-mode
  :mode (("\\.json?\\'" . json-mode)))


;; (flycheck-def-config-file-var flycheck-jscs javascript-jscs ".jscsrc" :safe #'stringp)
;; (flycheck-define-checker javascript-jscs
;;   "A JavaScript code style checker.
;; See URL `https://github.com/mdevils/node-jscs'."
;;   :command ("jscs" "--esnext" "--reporter" "checkstyle"
;;             (config-file "--config" flycheck-jscs)
;;             source)
;;   :error-parser flycheck-parse-checkstyle
;;   :modes (js-mode js2-mode js3-mode)
;;   :predicate (lambda () (string= (file-name-extension (buffer-file-name)) "js"))
;;   )

;; (defun use-eslint-from-node-modules ()
;;   (let* ((root (locate-dominating-file
;;                 (or (buffer-file-name) default-directory)
;;                 "node_modules"))
;;          (eslint (and root
;;                       (expand-file-name "node_modules/eslint/bin/eslint.js"
;;                                         root))))
;;     (when (and eslint (file-executable-p eslint))
;;       (setq-local flycheck-javascript-eslint-executable eslint))))

;; (add-hook 'flycheck-mode-hook #'use-eslint-from-node-modules)

;; (add-hook 'flycheck-before-syntax-check-hook 'flycheck-clear)

(provide 'init-javascript)
