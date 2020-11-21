(setq gc-cons-threshold (* 100 1000 1000))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/"))
      package-pinned-packages '(("magit" . "melpa")
                                ("yasnippet" . "melpa")
                                ("minimap" . "melpa")
                                ("js2-mode" . "melpa")))

(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq byte-compile-warnings '(not obsolete))
