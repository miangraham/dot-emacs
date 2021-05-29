(require 'use-package)

(defvar my/nick "libera")

(use-package erc
  :ensure nil
  :custom
  (erc-modules '(button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring stamp track))
  (erc-track-exclude '("#haskell" "#libera" "#nixos"))
  (erc-track-exclude-types '("JOIN" "KICK" "NICK" "PART" "QUIT" "333" "353"))
  (erc-hide-list '("JOIN" "PART" "QUIT"))
  (erc-prompt-for-password nil)
  (erc-email-userid my/nick)
  :config
  (defun my/chat ()
    (interactive)
    (erc-update-modules)
    (erc-tls
     :server "localhost"
     :port 5000
     :nick my/nick
     :password (getenv "LIBERA_CHAT_PASS"))))

(provide 'init-irc)
