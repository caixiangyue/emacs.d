(use-package company
  :ensure t
  :config
  (setq company-minimum-prefix-length 1)
  (progn
    (add-hook 'after-init-hook 'global-company-mode)))

(provide 'init-company)
