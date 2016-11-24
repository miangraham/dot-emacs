(use-package projectile
  :bind-keymap ("C-c p" . projectile-command-map)
  :commands projectile-mode
  :defer 2

  :config
  (setq projectile-completion-system 'ivy
        projectile-enable-caching t
        projectile-indexing-method 'native
        projectile-mode-line '(:eval (format " P[%s]" (projectile-project-name))))

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
                (setq-local projectile-mode-line "Projectile"))))

  (projectile-mode)

  (use-package counsel-projectile
    :config (counsel-projectile-on))
  (use-package ag))

(provide 'init-projectile)
