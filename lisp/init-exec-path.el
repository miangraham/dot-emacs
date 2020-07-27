(let ((value (concat "/run/current-system/sw/bin:~/.nix-profile/bin:~/.bin:~/.cargo/bin:~/.npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:" (getenv "PATH"))))
  (setenv "PATH" value)
  (defvar eshell-path-env)
  (setq eshell-path-env value
        exec-path (append (parse-colon-path value) (list exec-directory))))

(cd "~")

(provide 'init-exec-path)
