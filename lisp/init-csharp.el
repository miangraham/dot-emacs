(require 'init-packages)
(require-package 'company)
(require-package 'csharp-mode)
(require-package 'flycheck)
;; (require-package 'omnisharp)

(require 'init-csharp-style)

;; OmniSharp setup follows. External server prereqs:
;; 1. Clone and build https://github.com/OmniSharp/omnisharp-server
;; 2. ln -s /path/to/built/OmniSharp.exe /something/in/exec/path/OmniSharp

;; (defun init-omnisharp-keys ()
;;   (local-set-key "\C-cob" 'omnisharp-build-in-emacs)
;;   (local-set-key "\C-cod" 'omnisharp-go-to-definition)
;;   (local-set-key "\C-cor" 'omnisharp-helm-find-usages)
;;   (local-set-key "\C-coR" 'omnisharp-rename)
;;   (local-set-key "\C-cos" 'omnisharp-helm-find-symbols))

;; (defun is-omnisharp-server-configured ()
;;   ;; (and (string= system-name "toki")
;;   ;;      (or omnisharp-server-executable-path
;;   ;;          (omnisharp--find-and-cache-omnisharp-server-executable-path))))
;;   nil)

;; (defun init-omnisharp ()
;; ;;  (add-to-list 'desktop-clear-preserve-buffers "\\*Omni-Server\\*")

;;   ;; Not sure why omnisharp doesn't register its own company-backend
;;   (after-load 'company
;;     (add-to-list 'company-backends 'company-omnisharp))

;;   (add-hook 'csharp-mode-hook 'omnisharp-mode)
;;   (add-hook 'omnisharp-mode-hook 'company-mode-on)
;;   (add-hook 'omnisharp-mode-hook 'flycheck-mode-on-safe)
;;   (add-hook 'omnisharp-mode-hook 'init-omnisharp-keys))

;; (setq current-omnisharp-solution nil)

;; (defun switch-omnisharp-solution (new-solution)
;;   (setq omnisharp-debug t)
;;   (setq debug-on-error t)
;;   (setq current-omnisharp-solution new-solution)
;;   (when (get-process "Omni-Server")
;;     (omnisharp-stop-server)
;;     (while (get-process "Omni-Server") (sleep-for 0.2)))

;;   (omnisharp-start-omnisharp-server new-solution)

;;   (while (not (get-process "Omni-Server"))
;;     (sleep-for 0.2))

;;   (set-process-query-on-exit-flag (get-process "Omni-Server") nil)

;;   ;; This is terrible. How to get a clean hook?
;;   ;; Calling omnisharp--check-ready-status-worker too early locks the whole thing up.
;;   (message "Waiting for omnisharp server...")
;;   (sleep-for 10)
;;   (while (not (omnisharp--check-ready-status-worker))
;;     (sleep-for 1))
;;   )

;; (defun use-omnisharp-solution (solution)
;;   (unless (equal solution current-omnisharp-solution) (switch-omnisharp-solution solution)))

;; ;; Bail on omnisharp if we couldn't get the server info
;; (when (is-omnisharp-server-configured) (init-omnisharp))

(provide 'init-csharp)
