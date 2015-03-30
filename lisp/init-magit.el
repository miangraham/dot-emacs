(require-package 'diminish)
(require-package 'fullframe)
(require-package 'magit)

(global-set-key "\C-ci" 'magit-status)

(after-load 'magit (fullframe magit-status magit-mode-quit-window))
(after-load 'magit (diminish 'magit-auto-revert-mode))

(provide 'init-magit)
