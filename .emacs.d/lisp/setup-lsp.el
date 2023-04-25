(use-package lsp-mode
  :ensure t
  :commands lsp lsp-deferred
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((go-mode
          emacs-lisp-mode) . lsp-deferred)
  :config
  (add-hook 'prog-mode-hook #'lsp)
  (setq exec-path (append exec-path '("~/.nvm/versions/node/v18.15.0/bin"))))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)


(defvar lsp-docker-client-packages
  '(lsp-css lsp-clients lsp-bash lsp-go lsp-pylsp lsp-html lsp-typescript
            lsp-terraform lsp-clangd))

;; (defconst lsp-docker-image-id "emacslsp/lsp-docker-langservers")
