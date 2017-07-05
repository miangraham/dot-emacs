(use-package typescript-mode
  :mode ("\\.ts\\'" . typescript-mode)
  :config
  (use-package tide
    :config
    (setq tide-tsserver-executable "node_modules/typescript/bin/tsserver")
    (setq tide-tsserver-process-environment '("TSS_LOG=-level verbose -file /tmp/tss.log"))
    (setq tide-format-options '(:InsertSpaceAfterFunctionKeywordForAnonymousFunctions nil :PlaceOpenBraceOnNewLineForFunctions nil :InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets nil :InsertSpaceAfterOpeningAndBeforeClosingNonemptyBraces nil))
    (add-hook 'typescript-mode-hook (lambda ()
                                      (tide-setup)
                                      (eldoc-mode +1)
                                      (tide-hl-identifier-mode +1)))))

(provide 'init-typescript)
