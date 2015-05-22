(require-package 'dired-details)
(setq dired-use-ls-dired nil)

(setq auto-save-default nil)
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))
(global-auto-revert-mode)

(setq default-input-method 'japanese)

(provide 'init-edit-setup)
