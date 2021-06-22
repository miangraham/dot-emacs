(require 'use-package)

(use-package telega
  :commands 'telega
  :ensure nil
  ;; :config
  ;; (add-hook 'telega-chat-mode-hook (lambda () (buffer-face-set '(:family "Noto Sans"))))
  :custom
  (telega-emoji-font-family "Twitter Color Emoji")
  (telega-week-start-day 0))

(provide 'init-telegram)
