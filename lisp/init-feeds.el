(require 'use-package)
(require 'youtube-dl)

(use-package elfeed
  :if (display-graphic-p)
  :bind ("C-c n". elfeed)
  :config
  (use-package elfeed-org
    ;; :demand t
    ;; :after org
    :config
    (setq rmh-elfeed-org-files (list "~/org/feeds.org"))
    (elfeed-org))

  (setq-default elfeed-search-filter "@1-week-ago--1-day-ago +unread -jp ")

  (setq youtube-dl-directory (if (file-directory-p "~/Downloads") "~/Downloads" "~/downloads")
        youtube-dl-arguments '("--no-mtime" "--all-subs" "--embed-subs")
        url-queue-timeout 15
        url-queue-parallel-processes 1
        elfeed-search-title-max-width 110)

  (defadvice elfeed (after configure-elfeed activate)
    (add-hook 'elfeed-new-entry-hook
              (elfeed-make-tagger :feed-url "youtube\\.com"
                                  :add 'video)))

  (defadvice elfeed-search-update (before configure-elfeed-search-update activate)
    (let ((feed (elfeed-db-get-feed "http://www.theonion.com/feeds/rss")))
      (setf (elfeed-feed-title feed) "The Onion")))

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

  (defun elfeed-show-youtube-dl ()
    "Download the current entry with youtube-dl."
    (interactive)
    (pop-to-buffer (youtube-dl (elfeed-entry-link elfeed-show-entry))))

  (defun elfeed-search-youtube-dl ()
    "Download the current entry with youtube-dl."
    (interactive)
    (let ((entries (elfeed-search-selected)))
      (dolist (entry entries)
        (if (null (youtube-dl (elfeed-entry-link entry)))
            (message "Entry is not a YouTube link!")
          (message "Downloading %s" (elfeed-entry-title entry)))
        (elfeed-untag entry 'unread)
        (elfeed-search-update-entry entry)
        (unless (use-region-p) (forward-line)))))

  (define-key elfeed-show-mode-map "d" 'elfeed-show-youtube-dl)
  (define-key elfeed-search-mode-map "d" 'elfeed-search-youtube-dl))

(provide 'init-feeds)
