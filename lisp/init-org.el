(require-package 'calfw)
(require 'calfw-org)
(require-package 'sunshine)
(setq org-modules '(org-habit))
(after-load 'org (org-load-modules-maybe t))

(setq org-default-notes-file "~/org/notes.org"
      org-log-done 'time
      org-todo-keywords '((sequence "TODO" "PROG" "DONE"))
      org-todo-keyword-faces '(("TODO" . 'org-todo)
                               ("PROG" . "yellow")
                               ("WAIT" . "yellow")
                               ("DONE" . 'org-done))
      org-tags-column -100

      org-capture-templates '(("t" "Task" entry
                               (file "~/org/todo.org")
                               "* TODO %^{Task}"
                               :immediate-finish t)
                              ("s" "Scheduled Task" entry
                               (file "~/org/todo.org")
                               "* TODO %^{Task}\n  SCHEDULED: %^t"
                               :immediate-finish t)
                              ("n" "Note" entry
                               (file "~/org/notes.org")
                               "* %^{Note}"
                               :immediate-finish t)
                              ("j" "Journal" entry
                               (file+datetree "~/org/journal.org")
                               "* %?\nEntered on %U\n  %i\n  %a")
                              )

      org-agenda-files '("~/org")
      org-agenda-span 2
      org-habit-following-days 1
      org-habit-graph-column 80
      org-habit-show-habits-only-for-today nil)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (ditaa . t)
   (dot . t)
   (sqlite . t)
   ))

(after-load 'org (fullframe org-agenda-list org-agenda-quit))

(run-with-idle-timer
 600 t
 (lambda ()
   (delete-other-windows)
   (org-agenda-list)
   (split-window-below)
   (jump-to-mu4e-inbox)
   ))

(setq sunshine-location "Tokyo,Japan")
(setq sunshine-units 'metric)

(add-hook 'org-mode-hook 'projectile-mode)

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c w") 'sunshine-forecast)

(provide 'init-org)
