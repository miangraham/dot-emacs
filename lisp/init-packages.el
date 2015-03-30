(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

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
