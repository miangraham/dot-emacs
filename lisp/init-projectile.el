(use-package projectile
  :defer 2
  :bind-keymap ("C-c p" . projectile-command-map)
  :commands projectile-mode
  :diminish projectile-mode

  :custom
  (projectile-completion-system 'default)
  (projectile-enable-caching t)
  (projectile-indexing-method 'native)

  :config
  ;; (setq projectile-mode-line '(:eval (format " P[%s]" (projectile-project-name))))

  (add-to-list 'projectile-globally-ignored-files ".DS_Store")
  (add-to-list 'projectile-globally-ignored-files "*.cache")
  (add-to-list 'projectile-globally-ignored-files "*.class")
  (add-to-list 'projectile-globally-ignored-files "*.elc")
  (add-to-list 'projectile-globally-ignored-files "*.eld")
  (add-to-list 'projectile-globally-ignored-files "*.jar")
  (add-to-list 'projectile-globally-ignored-files "*.png")
  (add-to-list 'projectile-globally-ignored-files "*.meta")

  (add-to-list 'projectile-globally-ignored-directories "elpa")
  (add-to-list 'projectile-globally-ignored-directories "node_modules")

  (add-hook 'find-file-hook
            (lambda ()
              (when (file-remote-p default-directory)
                ;; (setq-local projectile-mode-line "Projectile")
                (projectile-mode 0))))

  (projectile-mode)

  (use-package ag)
  (use-package ripgrep))

(provide 'init-projectile)
