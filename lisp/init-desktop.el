(require-package 'frame-fns)
(require-package 'frame-cmds)
(require 'desktop)

(desktop-save-mode 0)
(setq desktop-globals-to-save nil
      desktop-lazy-idle-delay 1
      desktop-lazy-verbose nil
      desktop-locals-to-save nil
      desktop-restore-eager 5
      desktop-restore-frames nil
      desktop-clear-preserve-buffers (quote
                                      ("\\*scratch\\*" "\\*Messages\\*" "\\*server\\*" "\\*tramp/.+\\*" "\\*Warnings\\*" "\\*Omni-Server\\*"))
      )

(defun use-home()
  (interactive)
  (desktop-change-dir "~/.emacs.d")
  (cd "~/.emacs.d")
  (rename-frame "" "emacs.d")
)

(defun use-scratch()
  (interactive)
  (desktop-change-dir "~/tmp")
  (cd "~/tmp")
  (rename-frame "" "scratch")
)

(defun use-walker()
  (interactive)
  (desktop-change-dir "~/walker")
  (cd "~/walker")
  (rename-frame "" "walker")
)

(defun use-hw()
  (interactive)
  (desktop-change-dir "~/hw")
  (cd "~/hw")
  (rename-frame "" "hw")
)

(defun use-los()
  (interactive)
  (desktop-change-dir "~/los")
  (cd "~/los")
  (rename-frame "" "los")
)

(defun use-fuel()
  (interactive)
  (desktop-change-dir "~/losfuel")
  (cd "~/losfuel")
  (rename-frame "" "losfuel")
)

(defun use-sdf()
  (interactive)
  (desktop-change-dir "~/projects/sdf_server")
  (cd "~/projects/sdf_server")
  (rename-frame "" "SDF")
)

(defun use-auth()
  (interactive)
  (desktop-change-dir "~/tmp/auth")
  (cd "~/tmp/auth")
  (rename-frame "" "auth")
  )

(defun use-authtest()
  (interactive)
  (desktop-change-dir "~/authtest")
  (cd "~/authtest")
  (rename-frame "" "authtest")
)

;;(desktop-change-dir "~/.emacs.d")
(cd "~/.emacs.d")
(rename-frame "" "emacs.d")

(desktop-save-mode 1)

(provide 'init-desktop)
