(require 'init-misc-defuns)
;; (use-package totd)

;; Package installation
(use-package paradox
  :bind ("C-c l" . paradox-list-packages))

;; Editing
(global-unset-key "\C-z")
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-x=" 'replace-last-sexp)
(global-unset-key "\C-c\C-c")
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
(global-unset-key "\M-;")
(global-set-key "\M-;" 'comment-or-uncomment-region)
(global-set-key "\M-j" '(lambda () (interactive) (join-line -1)))
(global-unset-key (kbd "<S-backspace>"))
(global-set-key "\C-xk" 'kill-this-buffer)
(global-set-key "\C-c/" 'nocomments-mode)

;; Reference commands
(global-set-key "\C-crg" 'goog)
(global-set-key "\C-crj" 'jsref)
;; (global-set-key "\C-cd" 'define-word-at-point)
(use-package define-word
  :bind ("C-c r d" . define-word-at-point))
(use-package wiki-summary
  :bind ("C-c r w" . wiki-summary))

;; Global text scale
(global-unset-key (kbd "C-x C-0"))
(global-unset-key (kbd "C-x C--"))
(global-unset-key (kbd "C-x C-="))
(global-unset-key (kbd "C-x C-+"))
(use-package hydra
  :config
  (defhydra hydra-textscale (global-map "C-c 0")
    "textscale"
    ("=" global-text-scale-increase "increase")
    ("-" global-text-scale-decrease "decrease")
    ("0" global-text-scale-reset "reset")))

(use-package which-key
  :diminish which-key-mode
  :config
  (which-key-mode))

(provide 'init-global-keys)
