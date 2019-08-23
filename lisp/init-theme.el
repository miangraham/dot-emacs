;; (use-package zenburn-theme
;;   :if (display-graphic-p)
;;   :demand
;;   :config (load-theme 'zenburn t))

(when (display-graphic-p)
  (set-face-font 'default "Fantasque Sans Mono")
  ;; (set-face-font 'solaire-default-face "Fantasque Sans Mono")
  (set-frame-font "Fantasque Sans Mono")
  (set-fontset-font t 'japanese-jisx0208 (font-spec :family "Noto Sans CJK JP Bold")))

(use-package doom-themes
  :if (display-graphic-p)
  :demand
  :custom
  (doom-Iosvkem-brighter-modeline t)
  (doom-Iosvkem-padded-modeline 2)
  :config
  (load-theme 'doom-Iosvkem t))

(use-package solaire-mode
  :if (display-graphic-p)
  :config
  (set-face-font 'solaire-default-face "Fantasque Sans Mono")
  (set-face-attribute 'solaire-default-face nil :height (if (string= (system-name) "nanachi") 160 200))

  (setq solaire-mode-remap-alist
        '(
          ((default solaire-default-face)
           . t)
          ((hl-line solaire-hl-line-face)
           . t)
          ((org-hide solaire-org-hide-face)
           . t)
          ((org-indent solaire-org-hide-face)
           . t)
          ((linum solaire-line-number-face)
           . solaire-mode-remap-line-numbers)
          ((line-number solaire-line-number-face)
           . solaire-mode-remap-line-numbers)
          ((mode-line solaire-mode-line-face)
           . solaire-mode-remap-modeline)
          ((mode-line-inactive solaire-mode-line-inactive-face)
           . solaire-mode-remap-modeline)
          ((highlight-indentation-face solaire-hl-line-face)
           featurep 'highlight-indentation)))
  (solaire-mode-swap-bg)
  (solaire-global-mode +1))

;; (setq ns-use-srgb-colorspace nil)

(provide 'init-theme)
