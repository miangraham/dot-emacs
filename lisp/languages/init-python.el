(require 'use-package)

(use-package python
  :straight nil
  :mode "\\.py\\'"
  :interpreter "python"
  :custom
  (python-indent-offset 2)
  :config
  (add-hook 'python-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)
              (setq tab-width 2))))

(provide 'init-python)
