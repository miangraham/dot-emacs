(require 'tramp)
(setq tramp-default-method "ssh")

(setq vc-ignore-dir-regexp
      (format "\\(%s\\)\\|\\(%s\\)"
              vc-ignore-dir-regexp
              tramp-file-name-regexp))

(provide 'init-tramp)
