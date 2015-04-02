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

(setq org-capture-templates
      '(("t" "Task" entry
         (file "~/org/todo.org")
         "* TODO %^{Task}"
         :immediate-finish t)
        ))

;;(setq org-habit-show-habits-only-for-today nil)
(setq org-habit-graph-column 80)
(setq org-habit-following-days 2)

(setq org-agenda-files '("~/org"))

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(provide 'init-org)
