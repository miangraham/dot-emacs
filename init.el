(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'init-packages)
(require 'init-exec-path)

;;(require 'init-powerline)
(require 'init-ui)
(require 'init-theme)

(require 'init-ace)
(require 'init-magit)

(load-library "~/.emacs.d/modes")
(load-library "~/.emacs.d/hooks")
(load-library "~/.emacs.d/defuns")

(require 'init-desktop)
(require 'init-helm)
(require 'init-projectile)

(require 'init-org)

(require 'init-javascript)
(require 'init-java)
(require 'init-csharp)

(require 'init-global-keys)
