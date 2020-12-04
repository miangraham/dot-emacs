(use-package web-mode
  :mode ("\\.html?\\'" . web-mode)
  :config
  (setq web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-markup-indent-offset 2))

(provide 'init-html)