(require 'package)

(setq package-enable-at-startup nil
      package-archives '(("melpa" . "https://melpa.org/packages/")
;;      package-archives '(("melpa" . "https://www.mirrorservice.org/sites/melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/"))
      package-pinned-packages '(("magit" . "melpa")
                                ("yasnippet" . "melpa")
                                ("minimap" . "melpa")
                                ("js2-mode" . "melpa")))

;; (package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'diminish)
  (package-install 'diminish))

(defalias 'after-load 'with-eval-after-load)

(provide 'init-packages)
