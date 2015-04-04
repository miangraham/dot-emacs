;; Bootstrap
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
(require 'init-packages)
(require 'init-exec-path)

;; Visuals
(require 'init-ui)
(require 'init-theme)

;; Tools
(require 'init-ace)
(require 'init-desktop)
(require 'init-helm)
(require 'init-magit)
(require 'init-org)
(require 'init-projectile)
(require 'init-tramp)

;; Coding
(require 'init-edit-setup)
(require 'init-prog-setup)
(require 'init-csharp)
(require 'init-java)
(require 'init-javascript)
(require 'init-xml)
(require 'init-yaml)

;; Personalization
(require 'init-misc-defuns)
(require 'init-global-keys)
