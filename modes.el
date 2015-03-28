(package-require-or-install 'iedit)

(package-require-or-install 'dired-details)
(setq dired-use-ls-dired nil)

(require 'tramp)
(setq tramp-default-method "ssh")

(require 'desktop)
(desktop-save-mode 1)
(setq desktop-restore-frames nil)

(setq auto-save-default nil)

(setenv "PATH"
  (concat
   "/usr/local/bin" ":"
   (getenv "PATH")
  )
)
(setq exec-path (split-string (getenv "PATH") ":"))

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(global-auto-revert-mode)

(setq-default tags-file-name "TAGS")

(set-fontset-font "fontset-default"
                  'japanese-jisx0208
                  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))
