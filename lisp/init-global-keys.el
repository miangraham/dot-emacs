(require-package 'hydra)
(require-package 'wiki-summary)
(require-package 'totd)
(require-package 'define-word)

;; Editing
(global-unset-key "\C-z")
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xw" 'copy-whole-buffer)
(global-set-key "\C-x=" 'replace-last-sexp)
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
(global-set-key "\M-j" '(lambda () (interactive) (join-line -1)))
(global-set-key (kbd "<S-backspace>") '(lambda () (interactive) (kill-line 0)))

;; Reference commands
(global-set-key "\C-crg" 'goog)
(global-set-key "\C-crj" 'jsref)
(global-set-key "\C-crw" 'wiki-summary)
(global-set-key "\C-cd" 'define-word-at-point)

;; Global text scale
(global-unset-key (kbd "C-x C-0"))
(global-unset-key (kbd "C-x C--"))
(global-unset-key (kbd "C-x C-="))
(global-unset-key (kbd "C-x C-+"))
(defhydra hydra-textscale (global-map "C-x C-0")
  "textscale"
  ("=" global-text-scale-increase "increase")
  ("-" global-text-scale-decrease "decrease")
  ("0" global-text-scale-reset "reset"))

(provide 'init-global-keys)
