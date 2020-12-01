(use-package erc
  :disabled 't
  :ensure nil
  :custom
  (erc-modules '(autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring stamp track))
  (erc-log-channels-directory "~/.erc/logs/")
  :config
  (add-hook 'erc-insert-post-hook 'erc-save-buffer-in-logs))

(provide 'init-irc)
