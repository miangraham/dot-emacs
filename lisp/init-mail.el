(add-to-list 'load-path (expand-file-name "site-lisp/mu4e" user-emacs-directory))
(require 'mu4e)

(setq mu4e-maildir "~/Mail")
(setq mu4e-drafts-folder "/drafts")
(setq mu4e-sent-folder "/sent")
(setq mu4e-trash-folder "/trash")

;;(setq mu4e-sent-messages-behavior 'delete)

(setq mu4e-maildir-shortcuts
      '(("/inbox"  . ?i)
        ("/sent"   . ?s)
        ("/trash"  . ?t)))

(setq mu4e-get-mail-command "offlineimap")
(setq message-kill-buffer-on-exit t)

(setq mu4e-html2text-command "textutil -stdin -format html -convert txt -stdout")

(setq smtpmail-mail-address "ian@ijin.net"
      user-mail-address "ian@ijin.net"
      user-full-name "M. Ian Graham"
      message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "smtp.1and1.com"
      smtpmail-default-smtp-server "smtp.1and1.com"
      smtpmail-stream-type 'starttls
      smtpmail-smtp-service 587
      smtpmail-smtp-user "ian@ijin.net"
      mu4e-compose-signature nil
      mu4e-compose-signature-auto-include nil
      mu4e-headers-show-threads nil
      mu4e-headers-date-format "%Y/%m/%d"
      mu4e-headers-fields '((:human-date . 12)
                            ;;(:flags . 6)
                            (:from . 22)
                            (:mailing-list . 10)
                            (:subject))
      mu4e-use-fancy-chars nil
      mu4e-attachment-dir  "~/Downloads"
      mu4e-update-interval 300
      mu4e-hide-index-messages t
      mu4e-split-view nil
      )

;;(run-with-idle-timer 600 t 'mu4e-update-mail-and-index t)

;;; WHYYYYYYYY
;;(after-load 'mu4e
;; (fullframe jump-to-mu4e-inbox mu4e~headers-quit-buffer)

(advice-add 'mu4e~headers-quit-buffer :after
            (lambda ()
              (run-at-time
               0.1 nil
               'bury-buffer)))

(defun jump-to-mu4e-inbox ()
  (interactive)
  (mu4e~headers-jump-to-maildir "/inbox"))
(global-set-key (kbd "C-c m") 'jump-to-mu4e-inbox)

;; (run-with-idle-timer
;;  600 t
;;  (lambda ()
;;    (delete-other-windows)
;;    (split-window-below)
;;    (jump-to-mu4e-inbox)))

(when window-system
  (mu4e~start))
(provide 'init-mail)