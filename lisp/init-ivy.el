(require 'init-packages)
(require-package 'smartparens)
(require 'smartparens)
(require-package 'swiper)
(require 'ivy)

(after-load 'swiper (diminish 'ivy-mode))
(ivy-mode 1)

(setq ivy-use-virtual-buffers t
      ivy-height 10
      ivy-display-style 'fancy
      ivy-count-format "(%d/%d) ")

(provide 'init-ivy)
