(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-l")
  :hook  ;; replace XXX-mode with concrete major-mode(e. g. python-mode)
  (erlang-mode . lsp)
  (python-mode . lsp)
         ;; if you want which-key integration
         ;;(lsp-mode . lsp-enable-which-key-integration))
  :config
	 (setq lsp-completion-enable-additional-text-edit nil)
	 (setq lsp-erlang-server-connection-type "stdio")
	 (setq lsp-erlang-server-path "~/.emacs.d/.local/erlang_ls/_build/default/bin/erlang_ls")
	 (setq lsp-java-server-install-dir "~/.emacs.d/.local/jdt")
	 (setq lsp-python-ms-executable
      "~/dev/python-language-server/output/bin/Release/osx-x64/publish/Microsoft.Python.LanguageServer")
  :commands lsp)

;; optionally
(use-package lsp-ui
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-position 'bottom))

(use-package erlang)

(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java :ensure nil)

(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp))))  ; or lsp-deferred

(yas-global-mode)

(provide 'init-lsp-mode)
