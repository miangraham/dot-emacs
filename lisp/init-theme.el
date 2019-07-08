(use-package zenburn-theme
  :if (display-graphic-p)
  :demand
  :config (load-theme 'zenburn t))

(when (display-graphic-p)
  (set-face-font 'default "Fantasque Sans Mono")
  (set-frame-font "Fantasque Sans Mono")
  (set-fontset-font t 'japanese-jisx0208 (font-spec :family "Noto Sans CJK JP Bold")))

;; (setq ns-use-srgb-colorspace nil)

(provide 'init-theme)
