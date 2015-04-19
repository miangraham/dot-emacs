(require-package 'company)
(require-package 'csharp-mode)
(require-package 'flycheck)
(require-package 'omnisharp)

(require 'init-csharp-style)

(add-hook 'csharp-mode-hook 'projectile-mode)

;; OmniSharp setup follows. External server prereqs:
;; 1. Clone and build https://github.com/OmniSharp/omnisharp-server
;; 2. export OMNISHARP_EXECUTABLE=/path/to/OmniSharp.exe
;; 3. export OMNISHARP_SOLUTION=/path/to/myproject.sln

(defun is-omnisharp-configured ()
  ;; Check whether required env vars are present
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-copy-env "OMNISHARP_EXECUTABLE")
    (exec-path-from-shell-copy-env "OMNISHARP_SOLUTION"))
  (and
   (getenv "OMNISHARP_EXECUTABLE")
   (getenv "OMNISHARP_SOLUTION")
   t))

(defun setup-omnisharp ()
  ;; Start server
  (setq omnisharp-server-executable-path (getenv "OMNISHARP_EXECUTABLE"))
  (unless (get-process "Omni-Server")
    (omnisharp-start-omnisharp-server (getenv "OMNISHARP_SOLUTION")))

  ;; Keep single server across desktops, don't freak out on exit.
  ;; Works great for only one C# desktop and rapid switching.
  ;; Won't work for multiple C# projects.
  (add-to-list 'desktop-clear-preserve-buffers "\\*Omni-Server\\*")
  (set-process-query-on-exit-flag (get-process "Omni-Server") nil)

  ;; Not sure why omnisharp doesn't register its own company-backend
  (after-load 'company
    (add-to-list 'company-backends 'company-omnisharp))

  (add-hook 'csharp-mode-hook 'omnisharp-mode)
  (add-hook 'omnisharp-mode-hook 'company-mode-on)
  (add-hook 'omnisharp-mode-hook 'flycheck-mode-on-safe)
  (add-hook 'omnisharp-mode-hook 'setup-omnisharp-keys))

(defun setup-omnisharp-keys ()
  (local-set-key "\C-cob" 'omnisharp-build-in-emacs)
  (local-set-key "\C-cod" 'omnisharp-go-to-definition)
  (local-set-key "\C-cor" 'omnisharp-helm-find-usages)
  (local-set-key "\C-coR" 'omnisharp-rename))

;; Bail on omnisharp if we couldn't get the server info
(when (is-omnisharp-configured) (setup-omnisharp))

(provide 'init-csharp)
