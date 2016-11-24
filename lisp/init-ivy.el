(use-package smartparens
  :defer 60
  :functions sp-wrap--can-wrap-p)

(use-package ivy
  :defer 1
  :diminish ivy-mode
  :config
  (setq ivy-use-virtual-buffers t
        ivy-height 10
        ivy-display-style 'fancy
        ivy-count-format "(%d/%d) ")
  (ivy-mode 1))

(provide 'init-ivy)
