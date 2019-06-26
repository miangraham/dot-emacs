;; (use-package tramp
;;   :defer 3
;;   :config
(require 'tramp)

(setq tramp-default-method "ssh"
      vc-ignore-dir-regexp (format "\\(%s\\)\\|\\(%s\\)"
                                   vc-ignore-dir-regexp
                                   tramp-file-name-regexp))

(provide 'init-tramp)
