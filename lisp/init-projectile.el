(require-package 'projectile)
(require-package 'helm-projectile)

(setq projectile-completion-system 'helm
      projectile-enable-caching t
      projectile-indexing-method 'native
      projectile-switch-project-action 'helm-projectile-find-file
      projectile-mode-line '(:eval (format " P[%s]" (projectile-project-name))))

(helm-projectile-on)

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

(provide 'init-projectile)
