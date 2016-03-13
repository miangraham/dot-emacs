(require 'package)

(setq package-enable-at-startup nil
      package-archives '(("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/"))
      package-pinned-packages '(("org" . "org")
                                ("magit" . "melpa")
                                ("yasnippet" . "melpa")
                                ("minimap" . "melpa")
                                ("js2-mode" . "melpa")
                                ))
(package-initialize)

(defun require-package(package-name)
  (unless (require package-name nil 't)
    (unless package-archive-contents (package-refresh-contents))
    (package-install package-name)
    (package-refresh-contents)
    (require package-name nil 't)))

(defalias 'after-load 'with-eval-after-load)

(provide 'init-packages)
