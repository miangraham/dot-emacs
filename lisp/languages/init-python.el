(require 'python)

(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 2)
            (setq python-indent-offset 2)))

(provide 'init-python)
