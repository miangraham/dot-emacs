;; Bootstrap
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp/" user-emacs-directory))

(setq gc-cons-threshold 100000000)
(require 'init-startup-profile)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'init-packages)
(require 'init-exec-path)

;; Visuals
(require 'init-ui)
(require 'init-theme)

;; Tools
(require 'init-ace)
(require 'init-git)
(require 'init-ivy)
(require 'init-ledger)
(require 'init-org)
(require 'init-projectile)
(require 'init-tramp)

;; Coding
(require 'init-edit-setup)
(require 'init-prog-setup)
(require 'init-csharp)
(require 'init-elisp)
(require 'init-java)
(require 'init-javascript)
(require 'init-xml)
(require 'init-yaml)

;; GUI Only
(when (display-graphic-p)
  (require 'init-feeds)
  (require 'init-mail))

;; Personalization
(require 'init-misc-defuns)
(require 'init-global-keys)

