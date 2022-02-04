(package-initialize)

(defun load-config-file (file) (interactive "f")
       "Load a file in current user's configuration directory"
       (load-file (expand-file-name file "~/.emacs.d")))

(load-config-file "packages.el")

(load-config-file "projectile.el")

(load-theme 'dracula t)

(setq inhibit-startup-message t)

(menu-bar-mode -1)
(column-number-mode 1)
(global-display-line-numbers-mode)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
