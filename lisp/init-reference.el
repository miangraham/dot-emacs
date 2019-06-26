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

(global-set-key "\C-crg" 'goog)
(global-set-key "\C-crj" 'jsref)

(use-package define-word
  :bind ("C-c r d" . define-word-at-point))
(use-package wiki-summary
  :bind ("C-c r w" . wiki-summary))

(provide 'init-reference)
