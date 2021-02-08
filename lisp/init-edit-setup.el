;; (use-package move-dup
;;   :bind (("M-<up>" . md-move-lines-up)
;;          ("M-<down>" . md-move-lines-down)
;;          ("C-M-<up>" . md-duplicate-up)
;;          ("C-M-<down>" . md-duplicate-down)))

(use-package drag-stuff
  :defer 2
  :config
  (drag-stuff-define-keys)
  (drag-stuff-global-mode 1))

(use-package autorevert
  :ensure nil
  :config
  (global-auto-revert-mode))

(use-package anzu
  :diminish anzu-mode
  :config
  (global-anzu-mode))

(use-package which-key
  :diminish which-key-mode
  :config
  (which-key-mode))

(use-package helpful
  :bind (("C-h h" . helpful-at-point)))

(defun undosify ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(setq auto-save-default nil
      backup-directory-alist `(("." . ,(expand-file-name "backup/" user-emacs-directory)))
      default-input-method 'japanese
      locale-coding-system 'utf-8
      mouse-drag-copy-region 't
      select-active-regions nil
      select-enable-primary t
      select-enable-clipboard t
      shift-select-mode nil)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(set-default 'sentence-end-double-space nil)

(put 'erase-buffer 'disabled nil)

;; Dumb defaults
(global-unset-key "\C-z")
(global-unset-key "\C-c\C-c")
(global-unset-key (kbd "<S-backspace>"))
(global-unset-key "\M-;")

;; Keys
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\M-;" 'comment-or-uncomment-region)
(global-set-key "\C-xk" 'kill-this-buffer)
(global-set-key "\M-j" '(lambda () (interactive) (join-line -1)))
(global-set-key (kbd "<C-M-backspace>") 'backward-kill-sexp)

;; Global text scale
(defun global-text-scale-increase ()
  (interactive)
  (set-face-attribute 'default nil :height (+ (face-attribute 'default :height) 20)))

(defun global-text-scale-decrease ()
  (interactive)
  (set-face-attribute 'default nil :height (- (face-attribute 'default :height) 20)))

(defun global-text-scale-reset ()
  (interactive)
  (set-face-attribute 'default nil :height (if (string= (system-name) "nanachi") 140 200)))

(global-text-scale-reset)
(global-unset-key (kbd "C-x C-0"))
(global-unset-key (kbd "C-x C--"))
(global-unset-key (kbd "C-x C-="))
(global-unset-key (kbd "C-x C-+"))
(use-package hydra
  :commands (hydra--call-interactively-remap-maybe
             hydra-default-pre
             hydra-keyboard-quit
             hydra-show-hint
             hydra-set-transient-map)
  :config
  (defhydra hydra-textscale (global-map "C-c 0")
    "textscale"
    ("=" global-text-scale-increase "increase")
    ("-" global-text-scale-decrease "decrease")
    ("0" global-text-scale-reset "reset")))

(provide 'init-edit-setup)
