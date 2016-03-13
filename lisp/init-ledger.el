(require 'init-packages)
(require-package 'ledger-mode)
(require 'ledger-mode)

(add-to-list 'auto-mode-alist '("\\.ledger?\\'" . ledger-mode))

;; (setq ledger-post-auto-adjust-amounts 't
;;       ledger-default-acct-transaction-indent 2)

(provide 'init-ledger)
