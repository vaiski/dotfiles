(use-package treemacs
  :ensure t
  :bind (("M-0" . treemacs-select-window)
	 ("M-o" . ace-window)
	 ("s-b" . treemacs)))

(use-package treemacs-projectile
  :ensure t)

(use-package treemacs-magit
  :ensure t)
