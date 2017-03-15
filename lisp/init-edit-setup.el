(use-package dired-details
  :defer 5)

(use-package move-dup
  :bind (("M-<up>" . md/move-lines-up)
         ("M-<down>" . md/move-lines-down)
         ("C-M-<up>" . md/duplicate-up)
         ("C-M-<down>" . md/duplicate-down)))

(use-package autorevert
  :diminish auto-revert-mode
  :config (global-auto-revert-mode))

(use-package anzu
  :diminish anzu-mode
  :config
  (global-anzu-mode))

(setq auto-save-default nil
      backup-directory-alist `(("." . "~/.emacs.d/backup"))
      default-input-method 'japanese
      locale-coding-system 'utf-8
      mouse-drag-copy-region 't
      select-active-regions nil
      select-enable-clipboard 't
      shift-select-mode nil)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(set-default 'sentence-end-double-space nil)

(put 'erase-buffer 'disabled nil)

(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)

(provide 'init-edit-setup)
