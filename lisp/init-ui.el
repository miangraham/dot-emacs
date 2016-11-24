(setq cursor-type 'box
      inhibit-splash-screen t
      initial-scratch-message nil
      mac-command-modifier 'meta
      scroll-bar-width 0
      ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)
(blink-cursor-mode -1)
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

(provide 'init-ui)
