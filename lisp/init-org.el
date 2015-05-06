(setq org-modules '(org-habit))

(after-load 'org (org-load-modules-maybe t))

(setq org-default-notes-file "~/org/notes.org"
      org-log-done 'time
      org-todo-keywords '((sequence "TODO" "PROG" "DONE"))
      org-todo-keyword-faces '(("TODO" . 'org-todo)
                               ("PROG" . "yellow")
                               ("WAIT" . "yellow")
                               ("DONE" . 'org-done)))

(setq org-capture-templates
      '(("t" "Task" entry
         (file "~/org/todo.org")
         "* TODO %^{Task}"
         :immediate-finish t)
        ("n" "Note" entry
         (file "~/org/notes.org")
         "* %^{Note}"
         :immediate-finish t)
        ("j" "Journal" entry
         (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ))

(setq org-agenda-files '("~/org")
      org-agenda-span 2
      org-habit-following-days 1
      org-habit-graph-column 80
      org-habit-show-habits-only-for-today nil)

(after-load 'org (fullframe org-agenda-list org-agenda-quit))
(run-with-idle-timer 300 t 'org-agenda-list)

(add-hook 'org-mode-hook 'projectile-mode)

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(provide 'init-org)
