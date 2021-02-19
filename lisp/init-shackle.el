(use-package shackle
  :ensure
  :diminish
  :custom
  (shackle-rules '(("*Messages*" :select nil :other t :align bottom :size 0.2 :inhibit-window-quit t)
                   ;; (".*magit.*" :regexp t :frame t :same t :select t)
		   ("*Buffer List*" :select t :same t)))
  (shackle-default-rule nil)
  :config
  (shackle-mode))

(provide 'init-shackle)
