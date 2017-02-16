(let ((value (concat "/Users/ian/.nvm/versions/node/v6.9.1/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin" (getenv "PATH"))))
  (setenv "PATH" value)
  (defvar eshell-path-env)
  (setq eshell-path-env value
        exec-path (append (parse-colon-path value) (list exec-directory))))

(provide 'init-exec-path)
