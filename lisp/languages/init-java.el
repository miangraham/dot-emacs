(add-hook 'java-mode-hook 'projectile-mode)
(add-hook 'java-mode-hook (lambda () (setq indent-tabs-mode 1)))

(defun create-java-tags ()
  (interactive)
  (shell-command (format "ctags -e -R --language-force=java --exclude=*.class .")))

(provide 'init-java)
