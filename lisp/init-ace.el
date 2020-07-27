;; (use-package ace-jump-mode
;;   :bind ("C-c SPC" . ace-jump-mode))

(use-package ace-window
  :bind ("C-x o" . ace-window)
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(provide 'init-ace)
