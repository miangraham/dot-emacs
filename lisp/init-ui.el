(require 'use-package)

(setq cursor-type 'box
      inhibit-splash-screen t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil
      scroll-bar-width 0
      ring-bell-function 'ignore
      default-directory "~/"
      browse-url-browser-function (if (string= system-type "darwin") 'browse-url-default-browser 'browse-url-firefox))

(fset 'yes-or-no-p 'y-or-n-p)

(blink-cursor-mode -1)
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(when (string= system-type "darwin")
  (setq mac-command-modifier 'meta
        ns-use-proxy-icon nil)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (when window-system
    (toggle-frame-maximized)))

;; Mute startup message
(defun display-startup-echo-area-message ()
  (message nil))

(use-package beacon
  :diminish
  :config
  (beacon-mode 1)
  ;; (global-hl-line-mode t)
  )

;; (defvar my/vfont "SF Pro Display")
(defvar my/vfont "Fantasque Sans Mono")

(use-package treemacs
  :bind ("C-c t" . treemacs)
  :config
  (setq treemacs-width 30)
  (set-face-font 'treemacs-directory-face my/vfont)
  (set-face-font 'treemacs-file-face my/vfont)
  (set-face-font 'treemacs-fringe-indicator-face my/vfont)
  (set-face-font 'treemacs-git-added-face my/vfont)
  (set-face-font 'treemacs-git-conflict-face my/vfont)
  (set-face-font 'treemacs-git-ignored-face my/vfont)
  (set-face-font 'treemacs-git-modified-face my/vfont)
  (set-face-font 'treemacs-git-renamed-face my/vfont)
  (set-face-font 'treemacs-git-unmodified-face my/vfont)
  (set-face-font 'treemacs-git-untracked-face my/vfont)
  (set-face-font 'treemacs-help-column-face my/vfont)
  (set-face-font 'treemacs-help-title-face my/vfont)
  (set-face-font 'treemacs-on-failure-pulse-face my/vfont)
  (set-face-font 'treemacs-on-success-pulse-face my/vfont)
  (set-face-font 'treemacs-root-face my/vfont)
  (set-face-font 'treemacs-root-remote-face my/vfont)
  (set-face-font 'treemacs-root-remote-disconnected-face my/vfont)
  (set-face-font 'treemacs-root-remote-unreadable-face my/vfont)
  (set-face-font 'treemacs-root-unreadable-face my/vfont)
  (set-face-font 'treemacs-tags-face my/vfont)
  (set-face-font 'treemacs-term-node-face my/vfont)

  (use-package treemacs-projectile
    :after treemacs projectile)
  (use-package treemacs-magit
    :after treemacs magit))

(use-package golden-ratio
  :defer 1
  :diminish

  :custom
  (golden-ratio-auto-scale nil)
  (golden-ratio-extra-commands '(ace-window))
  (golden-ratio-exclude-modes '(erc-mode))
  :config
  (golden-ratio-mode 1))

(provide 'init-ui)
