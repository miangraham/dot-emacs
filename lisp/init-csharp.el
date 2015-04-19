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

(after-load 'company
  (add-to-list 'company-backends 'company-omnisharp))

(add-hook 'csharp-mode-hook 'company-mode-on)
(add-hook 'csharp-mode-hook 'flycheck-mode-on-safe)
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(add-hook 'csharp-mode-hook 'projectile-mode)

(defun setup-omnisharp-keys ()
  (local-set-key "\C-cor" 'omnisharp-find-usages)
  (local-set-key "\C-cod" 'omnisharp-go-to-definition))

(add-hook 'omnisharp-mode-hook 'setup-omnisharp-keys)

(provide 'init-csharp)
