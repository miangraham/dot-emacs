(recentf-mode 1)

(use-package selectrum
  :config
  (selectrum-mode +1))

(use-package selectrum-prescient
  :after selectrum
  :functions selectrum-mode
  :config
  (selectrum-prescient-mode +1))

(use-package orderless
  :custom (completion-styles '(orderless)))

(use-package consult)

(provide 'init-narrowing)
