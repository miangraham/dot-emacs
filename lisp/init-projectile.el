(require 'use-package)

(use-package projectile
  :defer 2
  :bind-keymap ("C-c p" . projectile-command-map)
  :bind ("C-c s" . projectile-ripgrep)
  :commands projectile-mode
  :diminish

  :custom
  (projectile-completion-system 'default)
  (projectile-enable-caching t)
  (projectile-indexing-method 'native)

  :config
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
  (add-to-list 'projectile-globally-ignored-directories "target")

  (add-hook 'find-file-hook
            (lambda ()
              (when (file-remote-p default-directory)
                (projectile-mode 0))))

  (projectile-mode))

(use-package ag :demand t :after projectile)
(use-package ripgrep :demand t :after projectile)

(provide 'init-projectile)
