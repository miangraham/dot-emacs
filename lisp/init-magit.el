(require-package 'fullframe)
(require-package 'magit)

(eval-after-load 'magit (fullframe magit-status magit-mode-quit-window))

(global-set-key "\C-ci" 'magit-status)

(provide 'init-magit)
