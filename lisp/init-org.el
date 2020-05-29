(use-package org
  :demand
  :defer 1
  :bind
  (("C-c a" . org-agenda)
   ("C-c c" . org-capture))

  :defines
  (org-agenda-skip-scheduled-if-done
   org-agenda-span
   org-capture-templates)

  :functions
  (org-load-modules-maybe
   org-agenda-quit)

  :config
  (setq org-modules '(org-agenda org-capture ox-latex))
  (org-load-modules-maybe t)
  (fullframe org-agenda-list org-agenda-quit)
  (setq org-default-notes-file "~/org/notes.org"
        org-agenda-files '("~/org")
        org-agenda-span 8
        org-agenda-skip-scheduled-if-done t
        org-log-done 'time
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
  (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
  (setq org-refile-use-outline-path 'file)
  (setq org-outline-path-complete-in-steps nil)

  (use-package org-tree-slide
    :bind
    (("C-c z" . org-tree-slide-mode)
     (:map org-tree-slide-mode-map
           ("<left>" . org-tree-slide-move-previous-tree)
           ("<right>" . org-tree-slide-move-next-tree)))
    :init
    (add-hook 'org-tree-slide-mode-hook 'org-bullets-mode)
    )

  (use-package org-randomnote
    :bind
    (("C-c r r" . org-randomnote))
    :config
    (setq org-randomnote-candidates '("~/org/journal.org" "~/org/notes.org"))
    )

  (use-package org-ref
    :config
    (setq reftex-default-bibliography '("~/org/bibliography/references.bib")
          org-ref-default-bibliography '("~/org/bibliography/references.bib")
          bibtex-completion-bibliography "~/org/bibliography/references.bib")
    )
  )

(use-package org-roam
  :after org
  :bind
  (("C-c r i" . org-roam-insert)
   ("C-c r f" . org-roam-find-file)
   ("C-c r b" . org-roam-buffer-toggle-display)
   ("C-c r g" . org-roam-graph))
  :diminish org-roam-mode
  :config
  (setq org-roam-directory "~/org/roam")
  :init
  (add-hook 'after-init-hook 'org-roam-mode))

(provide 'init-org)
