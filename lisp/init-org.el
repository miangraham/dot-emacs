(use-package org
  :bind
  (("C-c a" . org-agenda)
   ("C-c c" . org-capture))

  :defines
  (org-capture-templates
   org-habit-following-days
   org-habit-graph-column
   org-habit-show-habits-only-for-today)

  :functions
  (org-load-modules-maybe
   org-agenda-quit)

  :config
  (setq org-modules '(org-agenda org-capture org-habit))
  (org-load-modules-maybe t)
  (fullframe org-agenda-list org-agenda-quit)
  (setq org-default-notes-file "~/org/notes.org"
        org-agenda-files '("~/org")
        org-agenda-span 8
        org-log-done 'time
        org-habit-following-days 1
        org-habit-graph-column 80
        org-habit-show-habits-only-for-today nil
        org-tags-column -100
        org-hide-leading-stars t
        org-todo-keywords '((sequence "TODO" "DONE"))
        org-todo-keyword-faces '(("TODO" . 'org-todo)
                                 ("PROG" . "yellow")
                                 ("WAIT" . "yellow")
                                 ("DONE" . 'org-done))
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
                                ))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (sh . t)
     (python . t)
     (ditaa . t)
     (dot . t)
     (sqlite . t)
     (ruby . t)
     ))

  ;; (add-to-list 'org-src-lang-modes '("js" . "js2"))

  (use-package org-board
    :config (global-set-key (kbd "C-c b") org-board-keymap))

  (use-package calfw
    :defer 10
    :config (require 'calfw-org))
  )
(provide 'init-org)
