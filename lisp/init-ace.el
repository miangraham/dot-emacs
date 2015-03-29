(require 'cl)
(require-package 'ace-jump-mode)
(global-set-key "\C-c " 'ace-jump-mode)

(require-package 'ace-window)
(global-set-key "\C-xo" 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(provide 'init-ace)
