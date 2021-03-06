(require 'use-package)

(use-package drag-stuff
  :defer 2
  :diminish
  :config
  (drag-stuff-define-keys)
  (drag-stuff-global-mode 1))

(use-package autorevert
  :straight nil
  :config
  (global-auto-revert-mode))

(use-package anzu
  :diminish
  :config
  (global-anzu-mode))

(use-package which-key
  :diminish
  :config
  (which-key-mode))

(use-package helpful
  :bind (("C-h h" . helpful-at-point)))

(use-package visual-fill-column
  :hook (visual-line-mode . visual-fill-column-mode))

(use-package adaptive-wrap
  :hook (visual-line-mode . adaptive-wrap-prefix-mode))

(use-package emacs
  :straight nil
  :bind (("C-c v" . visual-line-mode)))

(use-package writeroom-mode
  :bind (("C-c w" . writeroom-mode))
  :hook (writeroom-mode . visual-line-mode))

(use-package highlight-indent-guides
  :defer 3
  :custom
  (highlight-indent-guides-method 'bitmap))

(defun sort-symbols (reverse beg end)
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\(\\sw\\|\\s_\\)+" "\\&" beg end))

(defun undosify ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(setq auto-save-default nil
      backup-directory-alist `(("." . ,(expand-file-name "backup/" user-emacs-directory)))
      default-input-method 'japanese
      locale-coding-system 'utf-8
      mouse-drag-copy-region 't
      mouse-yank-at-point t
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
(global-unset-key "\C-xs")

;; Keys
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\M-;" 'comment-or-uncomment-region)
(global-set-key "\C-xk" 'kill-this-buffer)
(global-set-key "\M-j" (lambda () (interactive) (join-line -1)))
(global-set-key (kbd "<C-M-backspace>") 'backward-kill-sexp)
(global-set-key "\C-xs" 'save-buffer)

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
