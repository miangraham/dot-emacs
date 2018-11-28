(use-package zenburn-theme
  :if (display-graphic-p)
  :demand
  :config (load-theme 'zenburn t))

(when (display-graphic-p)
  (set-face-font 'default "Fantasque Sans Mono")
  (set-frame-font "Fantasque Sans Mono"))

;; (when (display-graphic-p)
;;   (set-frame-font "Iosevka"))

;; (when (fboundp 'set-fontset-font)
;;   (set-fontset-font "fontset-default"
;;                     'japanese-jisx0208
;;                     '("Hiragino Kaku Gothic Pro" . "iso10646-1")))

;; (set-fontset-font t 'japanese-jisx0208 (font-spec :family "IPAExGothic"))
(set-fontset-font t 'japanese-jisx0208 (font-spec :family "Noto Sans CJK JP Bold"))

;; (set-fontset-font t 'japanese-jisx0208 (font-spec :family "IPAゴシック"))

(setq ns-use-srgb-colorspace nil)

(provide 'init-theme)
