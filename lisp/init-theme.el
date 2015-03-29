(require-package 'zenburn-theme)
;;(require-package 'warm-night-theme)
;;(require-package 'spacegray-theme)

;;(require-package 'moe-theme)
;;(require-package 'color-theme-sanityinc-tomorrow)

;; (color-theme-cobalt)
 (load-theme 'zenburn t)
;;(load-theme 'spacegray t)
;;(color-theme-sanityinc-tomorrow-night)
;;(moe-light)

(set-fontset-font "fontset-default"
                  'japanese-jisx0208
                  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))

(provide 'init-theme)
