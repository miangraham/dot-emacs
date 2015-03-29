(require-package 'iedit)

(require-package 'dired-details)
(setq dired-use-ls-dired nil)

(require 'tramp)
(setq tramp-default-method "ssh")

(setq auto-save-default nil)

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(global-auto-revert-mode)

(setq-default tags-file-name "TAGS")

(set-fontset-font "fontset-default"
                  'japanese-jisx0208
                  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))
