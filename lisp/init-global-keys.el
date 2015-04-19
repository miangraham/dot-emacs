(require-package 'hydra)
(require-package 'move-text)
(require-package 'wiki-summary)

(move-text-default-bindings)

(global-unset-key "\C-z")
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xw" 'copy-whole-buffer)
(global-set-key "\C-x=" 'replace-last-sexp)
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)

;; Reference commands
(global-set-key "\C-crg" 'goog)
(global-set-key "\C-crj" 'jsref)
(global-set-key "\C-crw" 'wiki-summary)

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

;; Mouse/region behavior
(setq mouse-drag-copy-region 't
      select-active-regions nil
      x-select-enable-clipboard nil
      x-select-enable-primary 't)
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)

(provide 'init-global-keys)
