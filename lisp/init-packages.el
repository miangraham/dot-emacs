;; Initialize straight.el
(defvar bootstrap-version)
(setq straight-check-for-modifications '(check-on-save find-when-checking))
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(when (string= system-type "darwin")
  (straight-use-package 'use-package)
  (straight-use-package 'diminish))

(eval-and-compile
  (require 'use-package)
  ;; (custom-set-variables '(use-package-verbose t) '(use-package-minimum-reported-time 0.001))
  (when (string= system-type "darwin")
    (setq straight-use-package-by-default t)))
(require 'diminish)

(provide 'init-packages)
