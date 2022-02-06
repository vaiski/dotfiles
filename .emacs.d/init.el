t;; -*- coding: utf-8; lexical-binding: t -*-

(setq gc-cons-threshold 100000000)

(defun load-config-file (file) (interactive "f")
       "Load a file in current user's configuration directory"
       (load-file (expand-file-name file "~/.emacs.d")))

(load-config-file "packages.el")

(load-config-file "projectile.el")
(load-config-file "treemacs.el")

(editorconfig-mode 1)

(setq
 inhibit-startup-message t)

;; Prevent Emacs from littering the filesystem.
(setq
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil)

;; Basic UI settings
(menu-bar-mode -1)
(column-number-mode 1)
(global-display-line-numbers-mode)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(mood-line-mode)
(load-theme 'dracula t)
