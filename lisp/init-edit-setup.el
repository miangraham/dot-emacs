(require 'init-packages)
(require-package 'diminish)
(require-package 'dired-details)

(require-package 'move-dup)
(global-set-key (kbd "M-<up>") 'md/move-lines-up)
(global-set-key (kbd "M-<down>") 'md/move-lines-down)
(global-set-key (kbd "C-M-<up>") 'md/duplicate-up)
(global-set-key (kbd "C-M-<down>") 'md/duplicate-down)

(setq auto-save-default nil)
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(diminish 'auto-revert-mode)
(global-auto-revert-mode)

(setq default-input-method 'japanese)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(set-default 'sentence-end-double-space nil)
(put 'erase-buffer 'disabled nil)

;; Mouse/region behavior
(setq mouse-drag-copy-region 't
      select-active-regions nil
      select-enable-clipboard 't
      ;;      x-select-enable-primary 't
      shift-select-mode nil)
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)

(require-package 'anzu)
(require 'anzu)
(setq anzu-cons-mode-line-p nil)
(after-load 'anzu (diminish 'anzu-mode))
(global-anzu-mode +1)

(provide 'init-edit-setup)
