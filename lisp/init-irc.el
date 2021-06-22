(require 'use-package)

(defvar my/nick "libera")

(use-package erc
  :defer 3
  :ensure nil
  :custom
  (erc-email-userid my/nick)
  (erc-prompt-for-password nil)
  (erc-fill-function 'erc-fill-static)
  (erc-fill-static-center 15)
  (erc-fill-column 160)
  (erc-hide-list '("JOIN" "PART" "QUIT"))
  (erc-track-exclude '("#haskell" "#libera" "##programming"))
  (erc-track-exclude-types '("JOIN" "KICK" "NICK" "PART" "QUIT" "333" "353"))
  (erc-track-shorten-cutoff 8)
  (erc-track-shorten-start 3)
  (erc-ignore-list '("{^-^}!~graham@flexo.gsc.io"))
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
