(require 'use-package)

(defun goog(term)
  (interactive "sGoogle search: ")
  (browse-url
   (concat "http://www.google.com/search?q="
           (replace-regexp-in-string " " "+" term))))

(defun jsref(term)
  (interactive "sJavascript search: ")
  (browse-url
   (concat "http://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=site%3Adeveloper.mozilla.org/en-US/docs/Web/JavaScript/Reference+"
           (replace-regexp-in-string " " "+" term))))

(defun haskref ()
  (interactive)
  (browse-url-generic (concat "https://hoogle.haskell.org/?hoogle=" (thing-at-point 'word))))

(global-set-key "\C-crg" 'goog)
(global-set-key "\C-crj" 'jsref)
(global-set-key "\C-crh" 'haskref)

(use-package define-word
  :bind ("C-c r d" . define-word-at-point))
(use-package wiki-summary
  :bind ("C-c r w" . wiki-summary))

(provide 'init-reference)

;; (define-key haskell-mode-map (kbd "C-`") nil)
;; (define-key haskell-mode-map (kbd "C-c C-`") 'haskell-interactive-bring)
;; (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
;; (define-key haskell-mode-map (kbd "C-l C-l") 'haskell-process-load-file)
;; (define-key haskell-mode-map (kbd "C-c .") 'haskell-process-do-type)
;; (define-key haskell-mode-map (kbd "C-c ?") 'haskell-process-do-info)
;; (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
;; (define-key haskell-mode-map (kbd "C-c C-p") 'haskell-session-change-target)
;; (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def-or-tag)
;; (define-key haskell-mode-map (kbd "C-:") 'haskell-search-hoogle)
