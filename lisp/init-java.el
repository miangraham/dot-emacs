(add-hook 'java-mode-hook 'projectile-mode)
;;(add-hook 'java-mode-hook (lambda () (setq indent-tabs-mode 1)))

(defun create-java-tags ()
  (interactive)
;;  (interactive "DDirectory: ")
  (shell-command
;;     (format "ctags -f %s -e -R %s" path-to-ctags (directory-file-name dir-name)))
     (format "ctags -e -R --language-force=java --exclude=*.class ."))
  )

(provide 'init-java)
