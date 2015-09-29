(when window-system
  (require-package 'zenburn-theme)
  (load-theme 'zenburn t))

(when (fboundp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'japanese-jisx0208
                    '("Hiragino Kaku Gothic Pro" . "iso10646-1")))

(defun spaceline-ian-theme (&rest additional-segments)
  "Install a modeline close to the one used by Spacemacs, but which
looks better without third-party dependencies.

ADDITIONAL-SEGMENTS are inserted on the right, between `global' and
`buffer-position'."
  (spaceline-install

   '(((((workspace-number window-number) :separator "|")
       buffer-modified
       )
      :face highlight-face)
     anzu
     (buffer-id remote-host)
     ;; (buffer-id remote-host)
     major-mode
     ((flycheck-error flycheck-warning flycheck-info)
      :when active)
     (((minor-modes :separator spaceline-minor-modes-separator)
       process)
      :when active)
     (erc-track :when active)
     (version-control :when active)
     (org-pomodoro :when active)
     (org-clock :when active)
     nyan-cat)

   `((battery :when active)
     selection-info
     ((buffer-encoding-abbrev
       point-position
       line-column)
      :separator " | " :when active)
     (global :when active)
     ,@additional-segments
     (buffer-size :when active)
     (buffer-position :when active)
     hud)))

(setq ns-use-srgb-colorspace nil)
(require-package 'spaceline)
(require 'spaceline-config)
(setq powerline-height 28)
;; (setq powerline-default-separator 'zigzag)
(setq powerline-default-separator 'butt)
(setq spaceline-minor-modes-separator " ")
(spaceline-ian-theme)

(provide 'init-theme)
