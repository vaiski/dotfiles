(use-package clojure-mode
  :ensure t
  :config
  (subword-mode +1)
  (paredit-mode +1)
  (lsp +1))

(use-package cider
  :ensure t
  :config
  (setq cider-auto-show-error-buffer t)
  (setq cider-auto-select-error-buffer t)
  (setq cider-repl-history-file (concat user-emacs-directory "cider-history"))
  (setq cider-repl-pop-to-buffer-on-connect t)
  (setq cider-repl-wrap-history t)
  :bind (("C-c u" . cider-user-ns)
         ("C-M-r" . cider-refresh)))

(use-package company
  :ensure t
  :hook (cider-mode
         cider-repl-mode))

(use-package cider-hydra
  :ensure t
  :hook clojure-mode)

(use-package clj-refactor
  :ensure t
  :hook clojure-mode)
