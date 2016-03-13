(require 'init-packages)
(require-package 'exec-path-from-shell)
(require 'exec-path-from-shell)

(setq exec-path-from-shell-variables '("PATH" "MANPATH" "NODE_ENV" "MAIL_ADDRESS"))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)
