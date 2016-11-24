(require 'package)

(setq package-enable-at-startup nil
      package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/"))
      package-pinned-packages '(("magit" . "melpa")
                                ("yasnippet" . "melpa")
                                ("minimap" . "melpa")
                                ("js2-mode" . "melpa")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)

(defun require-package(package-name)
  (unless (require package-name nil 't)
    (unless package-archive-contents (package-refresh-contents))
    (package-install package-name)
    (package-refresh-contents)
    (require package-name nil 't)))

(defalias 'after-load 'with-eval-after-load)

(provide 'init-packages)
