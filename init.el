;; Bootstrap
(eval-and-compile
  (add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "lisp/languages/" user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "site-lisp/" user-emacs-directory))
  (let ((default-directory (expand-file-name "site-lisp/" user-emacs-directory)))
    (normal-top-level-add-subdirs-to-load-path))
  )

(require 'init-startup-profile)

;; gitignored
(load (expand-file-name "private-data.el" user-emacs-directory))

;; Initialize straight.el if on a platform that needs it
(when (string= system-type "darwin")
  (defvar bootstrap-version)
  (let ((bootstrap-file
         (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
        (bootstrap-version 5))
    (unless (file-exists-p bootstrap-file)
      (with-current-buffer
          (url-retrieve-synchronously
           "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
           'silent 'inhibit-cookies)
        (goto-char (point-max))
        (eval-print-last-sexp)))
    (load bootstrap-file nil 'nomessage))
  (setq straight-check-for-modifications '(check-on-save find-when-checking))
  (straight-use-package 'use-package)
  (straight-use-package 'diminish))

(eval-and-compile
  (require 'use-package)
  ;; (custom-set-variables '(use-package-verbose t) '(use-package-minimum-reported-time 0.001))
  (when (string= system-type "darwin")
    (setq straight-use-package-by-default t)))

(require 'init-exec-path)

(use-package no-littering
  :demand t
  :config
  (setq custom-file (no-littering-expand-etc-file-name "custom.el")))

;; Visuals
(require 'init-theme)
(require 'init-ui)

;; Tools
(require 'init-ace)
(require 'init-git)
(require 'init-ledger)
(require 'init-completion)
(require 'init-org)
(require 'init-projectile)
(require 'init-shackle)
(require 'init-tramp)

;; Coding
(require 'init-edit-setup)
(require 'init-prog-setup)
(require 'init-elisp)
(require 'init-haskell)
(require 'init-hcl)
(require 'init-html)
(require 'init-javascript)
(require 'init-nix)
(require 'init-purescript)
(require 'init-python)
(require 'init-rust)
(require 'init-typescript)
(require 'init-xml)
(require 'init-yaml)

;; Other clients
(require 'init-feeds)
(require 'init-irc)
(require 'init-telegram)
(when (or (string= (system-name) "maho.local")
          (string= (system-name) "maho"))
  (require 'init-mail))

(setq gc-cons-threshold (* 10 1000 1000))
