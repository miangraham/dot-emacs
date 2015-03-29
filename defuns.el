(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))

(defun undosify ()
 (interactive)
 (goto-char (point-min))
 (while (search-forward "\r" nil t) (replace-match "")))

(defun pres-display ()
  (interactive)
  ;; (if dim-braces-p
	;;   (dim-braces)
	;; )
  (set-face-attribute 'default nil :height 320)
)

(defun pres-mid ()
  (interactive)
  ;; (if dim-braces-p
	;;   (dim-braces)
	;; )
  (set-face-attribute 'default nil :height 240)
)

(defun pres-small ()
  (interactive)
  ;; (if dim-braces-p
	;;   (dim-braces)
	;; )
  (set-face-attribute 'default nil :height 180)
)

(defun pres-done ()
  (interactive)
  ;; (if (not dim-braces-p)
	;;   (dim-braces)
	;; )
  (set-face-attribute 'default nil :height 150)
)
(pres-done)

(defun goog(term)
  (interactive "sSearch term: ")
  (browse-url
   (concat "http://www.google.com/search?q="
		   (replace-regexp-in-string " " "+" term)
		   )
   )
)

(defun phpref(term)
  (interactive "sSearch term: ")
  (browse-url
   (concat "http://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=site%3Aphp.net+"
		   (replace-regexp-in-string " " "+" term)
		   )
   )
)

(defun jsref(term)
  (interactive "sSearch term: ")
  (browse-url
   (concat "http://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=site%3Adeveloper.mozilla.org/en/JavaScript/Reference+"
		   (replace-regexp-in-string " " "+" term)
		   )
   )
)

(defun copy-whole-buffer()
  (interactive)
  (mark-whole-buffer)
  (copy-region-as-kill (region-beginning) (region-end))
)

(defun delint()
  (interactive)
  (mark-whole-buffer)
  (replace-regexp "}(" "} (")
  (goto-char (point-min))
  (replace-regexp "){" ") {")
  (goto-char (point-min))
  (replace-regexp "function(" "function (")
  (goto-char (point-min))
  (replace-regexp "if(" "if (")
  (goto-char (point-min))
  (replace-regexp "}else" "} else")
  (goto-char (point-min))
  (replace-regexp "else{" "else {")
  (goto-char (point-min))
  (replace-regexp "for(" "for (")
  (goto-char (point-min))
  (replace-regexp "catch(" "catch (")
  (goto-char (point-min))
  (replace-regexp "}catch" "} catch")
)
