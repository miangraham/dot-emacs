(setq package-enable-at-startup nil)
(setq package-archives '(("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ;;("marmalade" . "http://marmalade-repo.org/packages/")
                         ))
(setq package-pinned-packages '(("org" . "org")
                                ("magit" . "melpa")
                                ))

(package-initialize)

(defun require-package(package-name)
  (unless (require package-name nil 't)
    (unless package-archive-contents (package-refresh-contents))
    (package-install package-name)
    (package-refresh-contents)
    (require package-name nil 't)
  )
)

(defalias 'after-load 'with-eval-after-load)

(provide 'init-packages)
