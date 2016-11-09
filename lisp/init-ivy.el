(require 'init-packages)
(require-package 'smartparens)
(require 'smartparens)
(require-package 'ivy)
(require 'ivy)

(after-load 'ivy (diminish 'ivy-mode))
(ivy-mode 1)

(setq ivy-use-virtual-buffers t
      ivy-height 10
      ivy-display-style 'fancy
      ivy-count-format "(%d/%d) ")

(provide 'init-ivy)
