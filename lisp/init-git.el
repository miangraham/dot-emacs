(require 'init-packages)

(when window-system
  (require-package 'diminish)
  (require-package 'fullframe)
  (require-package 'magit)
  (require-package 'git-link)
  (require-package 'git-timemachine)
  (require 'magit)
  (declare-function magit-mode-quit-window 'magit)

  (setq vc-handled-backends (quote (Git SVN CVS Hg)))
  (defvar magit-last-seen-setup-instructions "1.4.0")

  (global-set-key "\C-ci" 'magit-status)

  (after-load 'magit (fullframe magit-status magit-mode-quit-window)))

(provide 'init-git)
