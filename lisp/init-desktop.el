(when window-system

  (require-package 'frame-fns)
  (require-package 'frame-cmds)
  (require 'desktop)

  (desktop-save-mode 0)
  (setq desktop-globals-to-save nil
        desktop-lazy-idle-delay 1
        desktop-lazy-verbose nil
        desktop-locals-to-save nil
        desktop-restore-eager 5
        desktop-restore-frames nil)
  (add-to-list 'desktop-modes-not-to-save 'elfeed-search-mode)
  (add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
  (add-to-list 'desktop-modes-not-to-save 'org-agenda)
  (add-to-list 'desktop-modes-not-to-save 'mu4e-headers)
  (add-to-list 'desktop-modes-not-to-save 'magit)
  (add-to-list 'desktop-clear-preserve-buffers "\\*Omni-Server\\*")

  (defun use-home()
    (interactive)
    (desktop-change-dir "~/.emacs.d")
    (cd "~/.emacs.d")
    (rename-frame "" "emacs.d"))

  (defun use-scratch()
    (interactive)
    (desktop-change-dir "~/tmp")
    (cd "~/tmp")
    (rename-frame "" "scratch"))

  (defun use-walker()
    (interactive)
    (desktop-change-dir "~/walker")
    (cd "~/walker")
    (rename-frame "" "walker"))

  (defun use-hw()
    (interactive)
    (desktop-change-dir "~/hw")
    (cd "~/hw")
    (rename-frame "" "hw"))

  (defun use-los()
    (interactive)
    (desktop-change-dir "~/losios")
    (cd "~/losios")
    (rename-frame "" "losios"))

  (defun use-mg()
    (interactive)
    (desktop-change-dir "~/losmg")
    (cd "~/losmg")
    (rename-frame "" "losmg"))

  (defun use-sdf()
    (interactive)
    (desktop-change-dir "~/projects/sdf_server")
    (cd "~/projects/sdf_server")
    (rename-frame "" "SDF"))

  (defun use-auth()
    (interactive)
    (desktop-change-dir "~/tmp/auth")
    (cd "~/tmp/auth")
    (rename-frame "" "auth"))

  (defun use-cliauth()
    (interactive)
    ;; (use-omnisharp-solution "/Users/ian/authtest/authtest.sln")
    (desktop-change-dir "~/authtest")
    (cd "~/authtest")
    (rename-frame "" "authtest"))

  (defun use-muv()
    (interactive)
    (desktop-change-dir "~/muvluv")
    (cd "~/muvluv")
    (rename-frame "" "muvluv"))

  (defun use-koa()
    (interactive)
    (desktop-change-dir "~/koaauth")
    (cd "~/koaauth")
    (rename-frame "" "koaauth"))

  (defun use-parse()
    (interactive)
    (desktop-change-dir "~/parsetest")
    (cd "~/parsetest")
    (rename-frame "" "parsetest"))

  (defun use-social()
    (interactive)
    (desktop-change-dir "~/socialtest")
    (cd "~/socialtest")
    (rename-frame "" "socialtest"))

  (defun use-steer()
    (interactive)
    (desktop-change-dir "~/steering")
    (cd "~/steering")
    (rename-frame "" "steering"))

  (defun use-bb()
    (interactive)
    (desktop-change-dir "~/blockerblocker")
    (cd "~/blockerblocker")
    (rename-frame "" "blockerblocker"))

  (defun use-pre()
    (interactive)
    (desktop-change-dir "~/prereg")
    (cd "~/prereg")
    (rename-frame "" "prereg"))

  (defun use-nba()
    (interactive)
    (desktop-change-dir "~/nba")
    (cd "~/nba")
    (rename-frame "" "nba"))

  (defun use-jb()
    (interactive)
    (desktop-change-dir "~/jbdb")
    (cd "~/jbdb")
    (rename-frame "" "jb"))

  (defun use-load()
    (interactive)
    (desktop-change-dir "~/loadscreendemo")
    (cd "~/loadscreendemo")
    (rename-frame "" "loadscreendemo"))

  (cd "~/.emacs.d")
  (rename-frame "" "emacs.d")

  (desktop-save-mode 1)

  )
(provide 'init-desktop)
