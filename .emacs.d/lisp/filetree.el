(use-package treemacs
  :ensure t
  :bind (("M-0"     . treemacs-select-window)
	 ("M-o"     . ace-window)
	 ("C-x t t" . treemacs)
         ("C-x t d" . treemacs-select-directory)))

(use-package treemacs-projectile
  :ensure t)

(use-package treemacs-magit
  :ensure t)
