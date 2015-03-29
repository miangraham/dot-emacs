(require-package 'projectile)
(require-package 'helm-projectile)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'helm-projectile-find-file)
(helm-projectile-on)

;(projectile-global-mode)
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
(add-hook 'org-mode-hook 'projectile-mode)

(provide 'init-projectile)
