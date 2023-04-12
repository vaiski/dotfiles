(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap (("s-p" . projectile-command-map)
		("C-c p" . projectile-command-map)))

(use-package counsel-projectile
  :ensure t)

(use-package projectile-ripgrep
  :ensure t)
