(setq cursor-type 'box
      inhibit-splash-screen t
      initial-scratch-message nil
      mac-command-modifier 'meta
      scroll-bar-width 0
      ring-bell-function 'ignore)

(fset 'yes-or-no-p 'y-or-n-p)

(blink-cursor-mode -1)
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(global-hl-line-mode t)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(setq ns-use-proxy-icon nil)

;; Mute startup message
(defun display-startup-echo-area-message ()
  (message nil))

;; Package installation
(use-package paradox
  :bind ("C-c l" . paradox-list-packages))

(defvar my/vfont "SF Pro Display")

(use-package treemacs
  :bind ("C-c t" . treemacs)
  ;; :custom-face
  ;; (treemacs-root-face ((t (:family "SF Pro Display"))))
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

(provide 'init-ui)
