;; Bootstrap
;;(package-initialize)

(eval-and-compile
  (add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "site-lisp/" user-emacs-directory))
  (let ((default-directory "/usr/local/share/emacs/site-lisp/"))
    (normal-top-level-add-subdirs-to-load-path))
  )

(require 'init-startup-profile)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(load (expand-file-name "private-data.el" user-emacs-directory))

(eval-and-compile
  (require 'init-packages)
  (require 'use-package)
  (setq use-package-always-ensure t))

(require 'init-exec-path)

;; Visuals
(require 'init-theme)
(require 'init-ui)

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
(require 'init-haskell)
(require 'init-java)
(require 'init-javascript)
(require 'init-xml)
(require 'init-yaml)

;; GUI Only
(require 'init-feeds)
(require 'init-mail)

;; Personalization
(require 'init-misc-defuns)
(require 'init-global-keys)
