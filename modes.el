(package-require-or-install 'fullframe)
(package-require-or-install 'flycheck)
(package-require-or-install 'iedit)
(package-require-or-install 'magit)
(package-require-or-install 'projectile)
(package-require-or-install 'org-page)

(package-require-or-install 'dired-details)
(setq dired-use-ls-dired nil)

(require 'tramp)
(setq tramp-default-method "ssh")

(require 'desktop)
(desktop-save-mode 1)
(setq desktop-restore-frames nil)

;(require 'winner)
;(winner-mode 1)
;(setq even-window-heights nil)

(setq auto-save-default nil)

(with-no-warnings (iswitchb-mode 1))

(setenv "PATH"
  (concat
   "/usr/local/bin" ":"
   (getenv "PATH")
  )
)
(setq exec-path (split-string (getenv "PATH") ":"))

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(setq mac-command-modifier 'meta)
(setq cursor-type 'box)
(blink-cursor-mode -1)
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))
(setq scroll-bar-width 0)
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq visible-bell t)
(fset 'yes-or-no-p 'y-or-n-p)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(global-auto-revert-mode)

(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
;(projectile-global-mode)
(add-to-list 'projectile-globally-ignored-files "*.cache")
(add-to-list 'projectile-globally-ignored-files "*.class")
(add-to-list 'projectile-globally-ignored-files "*.elc")
(add-to-list 'projectile-globally-ignored-files "*.eld")
(add-to-list 'projectile-globally-ignored-files "*.jar")
(add-to-list 'projectile-globally-ignored-files "*.png")
(add-to-list 'projectile-globally-ignored-files "*.meta")

(eval-after-load 'magit (fullframe magit-status magit-mode-quit-window))


(setq-default tags-file-name "TAGS")

(setq org-default-notes-file "~/org/notes.org")

(setq org-todo-keywords
  '((sequence "TODO" "PROG" "WAIT" "DONE")))
(setq org-log-done 'time)

(setq org-todo-keyword-faces
			'(("TODO" . 'org-todo)
				("PROG" . "yellow")
				("WAIT" . "yellow")
				("DONE" . 'org-done)))

(setq op/repository-directory "~/org")
(setq op/site-domain "http://ian.tokyo/")
(setq op/repository-org-branch "master")
(setq op/repository-html-branch "generated")
(setq op/theme 'mdo)

(set-fontset-font "fontset-default"
                  'japanese-jisx0208
                  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))
