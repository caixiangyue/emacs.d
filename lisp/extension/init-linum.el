(use-package linum
  :init
  (progn
    (global-linum-mode t)
    (setq linum-format "%4d  ")
    (set-face-background 'linum nil)
    ))

(provide 'init-linum)
