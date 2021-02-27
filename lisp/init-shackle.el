(use-package shackle
  :ensure
  :diminish
  :custom
  (shackle-rules '(("*Messages*" :select nil :other t :align bottom :size 0.2 :inhibit-window-quit nil)
                   ;; (".*magit.*" :regexp t :frame t :same t :select t)
		   ("*Buffer List*" :select t :same t)))
  (shackle-default-rule nil)
  (shackle-inhibit-window-quit-on-same-windows t)
  :config
  (shackle-mode))

(provide 'init-shackle)
