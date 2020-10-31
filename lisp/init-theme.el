(use-package doom-themes
  :defer 0
  :custom
  (doom-Iosvkem-brighter-modeline t)
  (doom-Iosvkem-padded-modeline 2)
  :config
  (when (display-graphic-p)
    (set-face-font 'default "Fantasque Sans Mono")
    (set-frame-font "Fantasque Sans Mono")
    (set-fontset-font t 'japanese-jisx0208 (font-spec :family "Noto Sans CJK JP Bold")))

  (if (display-graphic-p)
      (load-theme 'doom-Iosvkem t)
    (load-theme 'doom-dracula t)))

(use-package solaire-mode
  :defer 3
  :if (display-graphic-p)
  :custom
  (solaire-mode-auto-swap-bg t)
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
  (solaire-global-mode +1))

(provide 'init-theme)
