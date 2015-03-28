(package-require-or-install 'org-page)

(setq org-modules '(org-habit))

(eval-after-load 'org
  '(org-load-modules-maybe t))

(setq org-default-notes-file "~/org/notes.org")

(setq org-todo-keywords
  '((sequence "TODO" "PROG" "DONE")))
(setq org-log-done 'time)

(setq org-todo-keyword-faces
			'(("TODO" . 'org-todo)
				("PROG" . "yellow")
				("WAIT" . "yellow")
				("DONE" . 'org-done)))

(setq org-agenda-files '("~/org"))

(setq op/repository-directory "~/org")
(setq op/site-domain "http://ian.tokyo/")
(setq op/repository-org-branch "master")
(setq op/repository-html-branch "generated")
(setq op/theme 'mdo)

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(provide 'init-org)
