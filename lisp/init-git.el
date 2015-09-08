(when window-system
  (require-package 'diminish)
  (require-package 'fullframe)
  (require-package 'magit)
  (require-package 'git-link)
  (require-package 'git-timemachine)

  (setq vc-handled-backends (quote (Git SVN CVS Hg RCS SCCS Mtn Arch)))
  (setq magit-last-seen-setup-instructions "1.4.0")

  (global-set-key "\C-ci" 'magit-status)

  (after-load 'magit (fullframe magit-status magit-mode-quit-window))
  ;; (after-load 'magit (diminish 'magit-auto-revert-mode))
  )

(provide 'init-git)
