(require-package 'elfeed)
(require-package 'elfeed-org)

(require 'youtube-dl-mode)
(setq youtube-dl-directory "~/Downloads"
      youtube-dl-arguments '("--no-mtime" "--restrict-filenames" "--all-subs" "--embed-subs"))

(setq url-queue-timeout 15
      url-queue-parallel-processes 1
      elfeed-search-title-max-width 110)

(setq-default elfeed-search-filter "@1-week-ago +unread ")

(setq rmh-elfeed-org-files (list "~/org/feeds.org"))
(elfeed-org)

;; Mark all YouTube entries
;; (after-load 'elfeed-db
;;   (add-hook 'elfeed-new-entry-hook
;;             (elfeed-make-tagger :feed-url "youtube\\.com"
;;                                 :add 'video)))
(defadvice elfeed (after configure-elfeed activate)
  (add-hook 'elfeed-new-entry-hook
            (elfeed-make-tagger :feed-url "youtube\\.com"
                                :add 'video)))

(defun elfeed-show-youtube-dl ()
  "Download the current entry with youtube-dl."
  (interactive)
  (pop-to-buffer (youtube-dl-download (elfeed-entry-link elfeed-show-entry))))

(defun elfeed-search-youtube-dl ()
  "Download the current entry with youtube-dl."
  (interactive)
  (let ((entries (elfeed-search-selected)))
    (dolist (entry entries)
      (if (null (youtube-dl-download (elfeed-entry-link entry)))
          (message "Entry is not a YouTube link!")
        (message "Downloading %s" (elfeed-entry-title entry)))
      (elfeed-untag entry 'unread)
      (elfeed-search-update-entry entry)
      (unless (use-region-p) (forward-line)))))

(define-key elfeed-search-mode-map "h"
  (lambda ()
    (interactive)
    (elfeed-search-set-filter (default-value 'elfeed-search-filter))))

(define-key elfeed-search-mode-map "j"
  (lambda ()
    (interactive)
    (cl-macrolet ((re (re rep str) `(replace-regexp-in-string ,re ,rep ,str)))
      (elfeed-search-set-filter
       (cond
        ((string-match-p "-jp" elfeed-search-filter)
         (re " *-jp" " +jp" elfeed-search-filter))
        ((string-match-p "\\+jp" elfeed-search-filter)
         (re " *\\+jp" " -jp" elfeed-search-filter))
        ((concat elfeed-search-filter "-jp")))))))

(define-key elfeed-search-mode-map "u"
  (lambda ()
    (interactive)
    (cl-macrolet ((re (re rep str) `(replace-regexp-in-string ,re ,rep ,str)))
      (elfeed-search-set-filter
       (cond
        ((string-match-p "-unread" elfeed-search-filter)
         (re " *-unread" " " elfeed-search-filter))
        ((string-match-p "\\+unread" elfeed-search-filter)
         (re " *\\+unread" " " elfeed-search-filter))
        ((concat elfeed-search-filter "+unread")))))))

(define-key elfeed-show-mode-map "d" 'elfeed-show-youtube-dl)
(define-key elfeed-search-mode-map "d" 'elfeed-search-youtube-dl)

(global-set-key (kbd "C-c n") 'elfeed)

(run-with-idle-timer
 ;; 1237 t
 307 t
 (lambda ()
   (elfeed-update)
   ))

(provide 'init-feeds)
