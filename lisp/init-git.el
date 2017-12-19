(setq vc-handled-backends (quote (Git SVN CVS Hg)))

(when window-system
  (use-package git-link
    :defer 10)

  (use-package git-timemachine
    :defer 10)

  (use-package magit
    :bind ("C-c i" . magit-status)
    :functions magit-mode-quit-window
    :init
    (setq magit-auto-revert-mode nil)
    :config
    (use-package fullframe
      :config (fullframe magit-status magit-mode-quit-window))))

(provide 'init-git)
