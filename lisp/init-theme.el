(use-package zenburn-theme
  :if (display-graphic-p)
  :demand
  :config (load-theme 'zenburn t))

(when (fboundp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'japanese-jisx0208
                    '("Hiragino Kaku Gothic Pro" . "iso10646-1")))

(setq ns-use-srgb-colorspace nil)

(provide 'init-theme)
