;; Warning: Chaos containment. Messy as all hell.

(c-add-style "ianbase"
             '(
               (c-basic-offset . 4)
               (c-comment-only-line-offset 0 . 0)
               (c-offsets-alist
                (inline-open . 0)
                (topmost-intro-cont . +)
                (statement-block-intro . +)
                (knr-argdecl-intro . 5)
                (substatement-open . +)
                (substatement-label . +)
                (label . +)
                (statement-case-open . +)
                (statement-cont . +)
                (arglist-intro . c-lineup-arglist-intro-after-paren)
                (arglist-close . c-lineup-arglist)
                (access-label . 0)
                (inher-cont . c-lineup-java-inher)
                (func-decl-cont . c-lineup-java-throws))))
 
(c-add-style "C#"
 '("ianbase"
   ;; (c-basic-offset . 2)
   ;; (c-basic-indent . 2)
   ;; (indent-tabs-mode . 1)
   ;; (default-tab-width . 2)
   ;; (tab-width . 2)
   (c-comment-only-line-offset . (0 . 0))
   (c-offsets-alist
    . (
       (access-label . -)
       (arglist-close . c-lineup-arglist)
       (arglist-cont . 0)
       (arglist-cont-nonempty . c-lineup-arglist)
       (arglist-intro . c-lineup-arglist-intro-after-paren)
       (block-close . 0)
       (block-open . 0)
       (brace-entry-open . 0)
       (brace-list-close . 0)
       (brace-list-entry . 0)
       (brace-list-intro . +)
       (brace-list-open . +)
       (c . c-lineup-C-comments)
       (case-label . 0)
       (catch-clause . 0)
       (class-close . 0)
       (class-open . 0)
       (comment-intro . c-lineup-comment)
       (cpp-macro . 0)
       (cpp-macro-cont . c-lineup-dont-change)
       (defun-block-intro . +)
       (defun-close . 0)
       (defun-open . 0)
       (do-while-closure . 0)
       (else-clause . 0)
       (extern-lang-close . 0)
       (extern-lang-open . 0)
       (friend . 0)
       (func-decl-cont . +)
       (inclass . +)
       (inexpr-class . +)
       (inexpr-statement . 0)
       (inextern-lang . +)
       (inher-cont . c-lineup-multi-inher)
       (inher-intro . +)
       (inlambda . c-lineup-inexpr-block)
       (inline-close . 0)
       (inline-open . 0)
       (innamespace . +)
       (knr-argdecl . 0)
       (knr-argdecl-intro . 5)
       (label . 0)
       (lambda-intro-cont . +)
       (member-init-cont . c-lineup-multi-inher)
       (member-init-intro . +)
       (namespace-close . 0)
       (namespace-open . 0)
       (objc-method-args-cont . c-lineup-ObjC-method-args)
       (objc-method-call-cont . c-lineup-ObjC-method-call)
       (objc-method-intro . [0])
       (statement . 0)
       (statement-block-intro . +)
       (statement-case-intro . +)
       (statement-case-open . +)
       (statement-cont . +)
       (stream-op . c-lineup-streamop)
       (string . c-lineup-dont-change)
       (substatement . +)
       (substatement-open . 0)
       (template-args-cont c-lineup-template-args +)
       (topmost-intro . 0)
       (topmost-intro-cont . 0)
       ))
   ))

(c-add-style "myC#Style"
  '("C#"  ; this must be defined elsewhere
    ;; (c-basic-offset . 2)
    ;; (c-basic-indent . 2)
    ;; (indent-tabs-mode . 1)
    ;; (default-tab-width . 2)
    ;; (tab-width . 2)
    ;; (c-echo-syntactic-information-p . t)
  (c-comment-only-line-offset . (0 . 0))
  (c-offsets-alist . (
    (c                     . c-lineup-C-comments)
    (namespace-open        . 0)
    (namespace-close       . 0)
    (innamespace           . +)
    (class-open            . 0)
    (class-close           . 0)
    (inclass               . +)
    (block-open            . -)    ; eg, open a block under a function name or if stmt;
                                   ; want this to be flush with prev line.
    (arglist-cont          . +)
    (substatement-open     . 0)  ; I think this is for a try {} or if{} or etc. why this is not block open, I don't know!
    (defun-open            . 0)  ; method defn? (but no!)
    (defun-block-intro     . +)  ;0 ; block within a function????
    (inline-open           . 0)  ; eg, opening a function? ??
    (statement-block-intro . +)  ; unknown what this is
    (brace-list-open       . 0)  ; list open (like an enum, array initializer)
    (brace-list-intro      . +)  ; first item in the list
    (brace-list-entry      . 0)  ; subsequent items in the list
    (brace-list-close      . 0)  ; list close
    (statement-cont        . (dinoch-csharp-lineup-string-cont +))  ; align long strings
    ))
  ))

(defun dinoch-csharp-lineup-string-cont (langelem)
  "Like `c-lineup-string-cont' but works with csharp string continuations."
  (save-excursion
    (back-to-indentation)
    (and (looking-at "@?\\s\"")
         (let ((quote (if (equal (char-after) ?@)
                          (char-after (1+ (point)))
                        (char-after)))
               pos)
           (while (and (progn (c-backward-syntactic-ws)
                              (when (eq (char-before) ?+)
                                (backward-char)
                                (c-backward-syntactic-ws))
                              (eq (char-before) quote))
                       (c-safe (c-backward-sexp) t)
                       ;; uncomment this to lineup under the @
                       ;;(progn (if (eq (char-before) ?@) (backward-char)) t)
                       (/= (setq pos (point)) (c-point 'boi))))
           (when pos
             (goto-char pos)
             (vector (current-column)))))))

(defun csharp-style-setup ()
  (cond (window-system
         (turn-on-font-lock)
         (c-set-style "myC#Style")
				 (local-set-key (kbd "{") 'self-insert-command)
         ;; (setq tab-width 2)
         ;; (setq default-tab-width 2)
         ;; (setq indent-tabs-mode t)
         )))

(add-hook 'csharp-mode-hook 'csharp-style-setup)

(provide 'init-csharp-style)
