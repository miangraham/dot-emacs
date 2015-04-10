(require-package 'hydra)
(require-package 'move-text)
(require-package 'wiki-summary)

(move-text-default-bindings)
;;(global-set-key [M-up] (lambda () (interactive) (scroll-down-line)))
;;(global-set-key [M-down] (lambda () (interactive) (scroll-up-line)))

(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xw" 'copy-whole-buffer)
(global-set-key "\C-x=" 'replace-last-sexp)
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)

(defhydra hydra-reference (global-map "\C-cr")
  "reference"
  ("g" goog "google")
  ("j" jsref "javascript")
  ("w" wiki-summary "wikipedia summary")
  )

;; (global-unset-key "\C-x\C-0")
;; (global-unset-key "\C-x\C--")
;; (global-unset-key "\C-x\C-=")
;; (global-unset-key "\C-x\C-+")

;; (defhydra hydra-textscale (global-map "\C-x\C-0")
;;   "textscale"
;;   ("=" global-text-scale-increase "increase")
;;   ("-" global-text-scale-decrease "decrease")
;;   ("0" global-text-scale-reset "reset")
;; )

(setq select-active-regions nil)
(setq mouse-drag-copy-region 't)
(setq x-select-enable-clipboard nil)
(setq x-select-enable-primary 't)
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)

(provide 'init-global-keys)
