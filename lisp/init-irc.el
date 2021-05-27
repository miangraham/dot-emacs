(defvar my/nick "img")

(use-package erc
  :ensure nil
  :custom
  (erc-modules '(autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring stamp track))
  (erc-log-channels-directory "~/.erc/logs/")
  (erc-track-exclude-types '("JOIN" "KICK" "NICK" "PART" "QUIT" "333" "353"))
  (erc-hide-list '("JOIN" "PART" "QUIT"))
  (erc-prompt-for-password nil)
  (erc-email-userid my/nick)
  (erc-autojoin-channels-alist '(("libera.chat" "#emacs" "#haskell" "#nixos")))
  (erc-autojoin-timing 'ident)
  :config
  (add-hook 'erc-insert-post-hook 'erc-save-buffer-in-logs)
  (erc-update-modules)
  (erc-autojoin-enable)
  (defun my/chat ()
    (interactive)
    (erc-tls
     :server "irc.libera.chat"
     :port 6697
     :nick my/nick
     :password (getenv "LIBERA_CHAT_PASS"))))

(provide 'init-irc)
