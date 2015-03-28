(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))

(require 'init-packages)

(require 'init-custom-variables)
(require 'init-custom-faces)

(require 'init-ui)
(require 'init-theme)

;(require 'init-powerline)
(require 'init-magit)
(load-library "~/.emacs.d/modes")
(load-library "~/.emacs.d/hooks")
(load-library "~/.emacs.d/defuns")
(load-library "~/.emacs.d/keys")
(require 'init-helm)
(require 'init-projectile)

(require 'init-org)

(require 'init-javascript)
(require 'init-java)
(require 'init-csharp)
