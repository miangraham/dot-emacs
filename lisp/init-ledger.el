(require 'use-package)

(use-package ledger-mode
  :mode ("\\.ledger?\\'" . ledger-mode))

(provide 'init-ledger)
