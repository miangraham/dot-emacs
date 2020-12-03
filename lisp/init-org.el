(use-package org
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

  :custom
  (org-modules '(org-agenda org-capture org-tempo ox-latex))
  (org-default-notes-file "~/org/notes.org")
  (org-agenda-files '("~/org" "~/org/roam"))
  (org-agenda-skip-scheduled-if-done t)
  (org-agenda-span 8)
  (org-catch-invisible-edits 'show)
  (org-confirm-babel-evaluate nil)
  (org-hide-emphasis-markers t)
  (org-hide-leading-stars t)
  (org-log-done 'time)
  (org-outline-path-complete-in-steps nil)
  (org-refile-targets '((org-agenda-files :maxlevel . 3)))
  (org-refile-use-outline-path 'file)
  (org-src-preserve-indentation t)
  (org-src-tab-acts-natively t)
  (org-tags-column -100)
  (org-use-speed-commands t)
  (org-todo-keywords '((sequence "TODO" "DONE")))
  (org-todo-keyword-faces '(("TODO" . 'org-todo)
                            ("PROG" . "yellow")
                            ("WAIT" . "yellow")
                            ("DONE" . 'org-done)))
  (org-capture-templates '(("t" "Task" entry
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

  :init
  (setq org-babel-key-prefix "\C-cb")

  :config
  (use-package fullframe
    :config
    (fullframe org-agenda-list org-agenda-quit))

  (use-package org-tree-slide
    :defer 5
    :bind
    (("C-c z" . org-tree-slide-mode)
     (:map org-tree-slide-mode-map
           ("<left>" . org-tree-slide-move-previous-tree)
           ("<right>" . org-tree-slide-move-next-tree)))
    :init
    (add-hook 'org-tree-slide-mode-hook 'org-bullets-mode)
    )

  (use-package org-randomnote
    :defer 5
    :bind
    (("C-c r r" . org-randomnote))
    :config
    (setq org-randomnote-candidates '("~/org/journal.org" "~/org/notes.org"))
    )

  (use-package org-superstar
    :custom-face
    (org-superstar-header-bullet ((t (:family "Terminus"))))
    :config
    (add-hook 'org-mode-hook
              (lambda ()
                (org-superstar-mode 1))))

  ;; (use-package org-ref
  ;;   ;; :defer 3
  ;;   :config
  ;;   (setq reftex-default-bibliography '("~/org/bibliography/zotero.bib")
  ;;         org-ref-default-bibliography '("~/org/bibliography/zotero.bib")
  ;;         bibtex-completion-bibliography "~/org/bibliography/zotero.bib")

  ;;   (use-package ivy-bibtex))
  )

(use-package ivy-bibtex
  :after org)

(use-package org-ref
  :after ivy-bibtex
  :custom
  (reftex-default-bibliography '("~/org/bibliography/zotero.bib"))
  (org-ref-default-bibliography '("~/org/bibliography/zotero.bib"))
  (bibtex-completion-bibliography "~/org/bibliography/zotero.bib"))

(use-package org-roam
  :demand t
  :after org-ref
  :bind
  (("C-c r i" . org-roam-insert)
   ("C-c r f" . org-roam-find-file)
   ("C-c r b" . org-roam-buffer-toggle-display)
   ("C-c r g" . org-roam-graph))
  :diminish org-roam-mode
  :custom
  (org-roam-directory "~/org/roam")
  (org-roam-db-location "~/org/roam/org-roam.db")
  :config
  (org-roam-mode +1))

(use-package org-roam-bibtex
  :demand t
  :after org-roam
  :hook (org-roam-mode . org-roam-bibtex-mode))

(use-package bookmark
  :ensure nil
  :defer 1
  :custom
  (bookmark-save-flag nil))

(provide 'init-org)
