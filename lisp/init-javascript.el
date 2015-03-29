(require-package 'flycheck)
(require-package 'json-mode)

(setq-default js-indent-level 2)

(flycheck-def-config-file-var flycheck-jscs javascript-jscs ".jscsrc"
  :safe #'stringp)
(flycheck-define-checker javascript-jscs
  "A JavaScript code style checker.
See URL `https://github.com/mdevils/node-jscs'."
  :command ("jscs" "--reporter" "checkstyle"
            (config-file "--config" flycheck-jscs)
            source)
  :error-parser flycheck-parse-checkstyle
  :modes (js-mode js2-mode js3-mode)
  :predicate (lambda () (string= (file-name-extension (buffer-file-name)) "js"))
  :next-checkers (javascript-jshint)
  )
(add-to-list 'flycheck-checkers 'javascript-jscs)

(setenv "NODE_ENV" "development")

(setenv "PATH"
  (concat
   "/Users/ian/.nvm/v0.11.14/bin" ":"
   (getenv "PATH")
  )
)
(setq exec-path (split-string (getenv "PATH") ":"))

(add-hook 'js-mode-hook 'projectile-mode)
(add-hook 'js-mode-hook 'flycheck-mode)

(provide 'init-javascript)
