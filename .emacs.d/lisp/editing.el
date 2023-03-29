(show-paren-mode 1)
(global-hl-line-mode 1)

(global-display-line-numbers-mode 1)
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		treemacs-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(setq-default indent-tabs-mode nil)

(setq-default sh-basic-offset 2
	      sh-indentation 2)

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(save-place-mode 1)
(setq save-place-file (concat user-emacs-directory "places"))

(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

(setq auto-save-default nil)

(defun toggle-comment-on-line ()
  "Comment or uncomment line."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)
