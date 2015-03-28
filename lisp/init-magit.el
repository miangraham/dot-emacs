(package-require-or-install 'fullframe)
(package-require-or-install 'magit)

(eval-after-load 'magit (fullframe magit-status magit-mode-quit-window))

(global-set-key "\C-ci" 'magit-status)

(provide 'init-magit)
