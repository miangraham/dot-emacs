(setenv "PATH"
  (concat
   "/usr/local/bin" ":"
   (getenv "PATH")
  )
)
(setq exec-path (split-string (getenv "PATH") ":"))

(provide 'init-exec-path)
