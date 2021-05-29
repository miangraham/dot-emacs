(require 'use-package)

(use-package tramp
  :ensure nil
  :defer 2
  :config
  (setq tramp-default-method "ssh"
        vc-ignore-dir-regexp (format "\\(%s\\)\\|\\(%s\\)"
                                     vc-ignore-dir-regexp
                                     tramp-file-name-regexp))
  )

(provide 'init-tramp)
