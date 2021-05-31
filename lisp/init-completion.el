(require 'use-package)

(use-package recentf
  :ensure nil
  :custom
  (recentf-max-saved-items 50)
  :config
  (recentf-mode 1))

(use-package selectrum
  :config
  (selectrum-mode +1))

(use-package selectrum-prescient
  :after selectrum
  :functions selectrum-mode
  :config
  (selectrum-prescient-mode +1)
  (prescient-persist-mode +1))

(use-package orderless
  :custom (completion-styles '(orderless)))

(use-package consult
  :after recentf
  :bind
  ;; ("C-s" . consult-isearch)
  ;; ("M-y" . consult-yank-pop)
  ("C-x b" . consult-buffer)
  ("C-c f" . consult-recent-file))

(use-package marginalia
  :init
  (marginalia-mode))

(provide 'init-completion)
