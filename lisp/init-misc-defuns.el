(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))

(defun undosify ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(defun global-text-scale-increase ()
  (interactive)
  (set-face-attribute 'default nil :height (+ (face-attribute 'default :height) 20)))

(defun global-text-scale-decrease ()
  (interactive)
  (set-face-attribute 'default nil :height (- (face-attribute 'default :height) 20)))

(defun global-text-scale-reset ()
  (interactive)
  (set-face-attribute 'default nil :height 150))
(global-text-scale-reset)

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

(defun display-startup-echo-area-message ()
  (message nil))

(provide 'init-misc-defuns)
