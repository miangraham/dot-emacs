(require 'use-package)

(use-package csharp-mode
  :mode ("\\.cs\\'" . csharp-mode)
  :config (require 'init-csharp-style))

(provide 'init-csharp)
