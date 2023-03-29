(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package counsel
  :ensure t
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-re-builders-alist '((t . ivy--regex-ignore-order)))
  (setq ivy-count-format "%d/%d ")
  (ivy-mode)
  :bind (("C-s" . swiper)
	 ("s-f" . swiper)
	 ("C-x C-f" . counsel-find-file)
	 ("C-x C-b" . counsel-switch-buffer)
	 ("M-x" . counsel-M-x)))

(use-package ivy-rich
  :ensure t
  :config
  (ivy-rich-mode))
