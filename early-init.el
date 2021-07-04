(setq gc-cons-threshold (* 100 1000 1000)
      package-enable-at-startup nil
      package-load-list nil
      byte-compile-warnings '(not obsolete)
      load-prefer-newer t)

(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
