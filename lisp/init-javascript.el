(require 'init-packages)
(require-package 'flycheck)
(require-package 'json-mode)

(setq-default js-indent-level 2)

(flycheck-def-config-file-var flycheck-jscs javascript-jscs ".jscsrc" :safe #'stringp)
(flycheck-define-checker javascript-jscs
  "A JavaScript code style checker.
See URL `https://github.com/mdevils/node-jscs'."
  :command ("jscs" "--esnext" "--reporter" "checkstyle"
            (config-file "--config" flycheck-jscs)
            source)
  :error-parser flycheck-parse-checkstyle
  :modes (js-mode js2-mode js3-mode)
  :predicate (lambda () (string= (file-name-extension (buffer-file-name)) "js"))
  )

(defun use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'use-eslint-from-node-modules)

;; (setq-default flycheck-disabled-checkers '(javascript-jshint javascript-gjslint javascript-standard))

(add-hook 'flycheck-before-syntax-check-hook 'flycheck-clear)

(provide 'init-javascript)
