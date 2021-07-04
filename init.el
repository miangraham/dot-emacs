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

(require 'init-packages)
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
