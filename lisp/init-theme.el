(when window-system
  (require-package 'zenburn-theme)
  (load-theme 'zenburn t))
;; (color-theme-cobalt)

(when (fboundp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'japanese-jisx0208
                    '("Hiragino Kaku Gothic Pro" . "iso10646-1")))

(provide 'init-theme)
