;; Bootstrap
(eval-and-compile
  (add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "lisp/languages/" user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "site-lisp/" user-emacs-directory))
  ;;(let ((default-directory (if (file-directory-p "/usr/local/share/emacs/site-lisp/") "/usr/local/share/emacs/site-lisp/" "/usr/share/emacs/site-lisp/")))
  ;;  (normal-top-level-add-subdirs-to-load-path))
  )

(require 'init-startup-profile)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; gitignored
(load (expand-file-name "private-data.el" user-emacs-directory))

(eval-and-compile
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
;; (require 'init-csharp)
(require 'init-elisp)
(require 'init-haskell)
(require 'init-hcl)
(require 'init-java)
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
(when (or (string= (system-name) "maho.local")
          (string= (system-name) "maho"))
  (require 'init-mail))
