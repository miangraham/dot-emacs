(require-package 'aggressive-indent)
(require-package 'comment-dwim-2)
(require-package 'diminish)
(require-package 'dtrt-indent)
(require-package 'flycheck)
(require-package 'iedit)
(require-package 'rainbow-delimiters)
(require-package 'web-mode)
(require-package 'ws-butler)
(require-package 'yasnippet)

(setq-default c-basic-indent 2
              c-basic-offset 2
              default-tab-width 2
              indent-tabs-mode nil ;;t
              sh-indentation 2
              sh-basic-offset 2
              tags-file-name "TAGS")

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-css-indent-offset 2
      web-mode-code-indent-offset 2
      web-mode-markup-indent-offset 2)

(setq flycheck-idle-change-delay 10)

(setq dtrt-indent-verbosity 0)
(after-load 'dtrt-indent (delete 'dtrt-indent-mode-line-info global-mode-string))
(dtrt-indent-mode)

(add-hook 'prog-mode-hook 'ws-butler-mode)
(after-load 'ws-butler (diminish 'ws-butler-mode))

(add-hook 'prog-mode-hook 'yas-minor-mode-on)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c y") 'yas-expand)

(after-load 'abbrev (diminish 'abbrev-mode))

(setq comment-dwim-2--inline-comment-behavior 'reindent-comment)

(provide 'init-prog-setup)
