(require-package 'swiper)
(require 'ivy)

(after-load 'swiper (diminish 'ivy-mode))
(ivy-mode 1)


(setq ivy-use-virtual-buffers t)
(setq ivy-height 10)
(setq ivy-display-style 'fancy)
(setq ivy-count-format "(%d/%d) ")

(provide 'init-ivy)
