(require-package 'company)
(require-package 'csharp-mode)
(require-package 'flycheck)
(require-package 'omnisharp)

(require 'init-csharp-style)

;; OmniSharp server sub-process wrangling
;; External prereq: Clone and build https://github.com/OmniSharp/omnisharp-server
(setq omnisharp-server-executable-path (expand-file-name "/Users/ian/dev/OmniSharpServer/OmniSharp/bin/Debug/OmniSharp.exe"))
(unless (get-process "Omni-Server")
  (omnisharp-start-omnisharp-server (expand-file-name "/Users/ian/authtest/authtest.sln")))
(set-process-query-on-exit-flag (get-process "Omni-Server") nil)
(add-to-list 'desktop-clear-preserve-buffers "\\*Omni-Server\\*")

;; Tell company-mode about omnisharp
(after-load 'company
  (add-to-list 'company-backends 'company-omnisharp))

(add-hook 'csharp-mode-hook 'company-mode)
(add-hook 'csharp-mode-hook 'flycheck-mode)
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(add-hook 'csharp-mode-hook 'projectile-mode)

(provide 'init-csharp)
