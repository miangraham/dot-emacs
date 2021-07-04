(require 'use-package)

(use-package telega
  :commands 'telega
  :custom
  (telega-emoji-font-family "Twitter Color Emoji")
  (telega-week-start-day 0))

(provide 'init-telegram)
