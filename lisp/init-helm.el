(require-package 'diminish)
(require-package 'helm)
(require-package 'helm-descbinds)
(require 'helm-config)

(helm-mode 1)
(helm-autoresize-mode t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(setq helm-split-window-in-side-p t)
(setq helm-move-to-line-cycle-in-source t)
(setq helm-ff-file-name-history-use-recentf t)

(after-load 'helm-mode (diminish 'helm-mode))

(provide 'init-helm)
