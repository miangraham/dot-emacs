(require 'init-packages)
(require-package 'projectile)
(require 'projectile)

(setq projectile-completion-system 'ivy
      projectile-enable-caching t
      projectile-indexing-method 'native
      projectile-mode-line '(:eval (format " P[%s]" (projectile-project-name))))

(add-to-list 'projectile-globally-ignored-files "*.cache")
(add-to-list 'projectile-globally-ignored-files "*.class")
(add-to-list 'projectile-globally-ignored-files "*.elc")
(add-to-list 'projectile-globally-ignored-files "*.eld")
(add-to-list 'projectile-globally-ignored-files "*.jar")
(add-to-list 'projectile-globally-ignored-files "*.png")
(add-to-list 'projectile-globally-ignored-files "*.meta")

(add-to-list 'projectile-globally-ignored-directories "elpa")
(add-to-list 'projectile-globally-ignored-directories "node_modules")

(add-hook 'emacs-lisp-mode-hook 'projectile-mode)
(add-hook 'objc-mode-hook 'projectile-mode)

(projectile-global-mode)

(provide 'init-projectile)
