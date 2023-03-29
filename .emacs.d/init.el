;; -*- lexical-binding: t; -*-

;; configure and initialize package.el
(require 'package)
(setq package-archives '(("melpa"        . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("elpa"         . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; download packages list if it's not already loaded
;; rm -rf ~/.emacs.d/elpa to reload
(when (not package-archive-contents)
  (package-refresh-contents))

;; store customizations in a separate file
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

;; option key on mac required to type square and curly brackets with a
;; finnish keyboard
(setq mac-option-modifier nil
      mac-command-modifier 'meta)

;; configure clipboard interaction
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t)

;; config file loading inspired by
;; https://github.com/redguardtoo/emacs.d/blob/master/init.el

(defconst my-emacs-dir (file-name-as-directory user-emacs-directory)
  "Emacs configuration directory")

(defconst my-lisp-dir (concat my-emacs-dir "lisp")
  "Directory for personal config files.")

(defun require-init (pkg)
  "Load PKG from personal config directory."
  (load (file-truename (format "%s/%s" my-lisp-dir pkg)) 'noerror 'nomessage))

;; load personal configs basic config

;; adapted from Clojure for the Brave and True example config found at
;; https://github.com/flyingmachine/emacs-for-clojure

(require-init 'ui)
(require-init 'navigation)
(require-init 'projects)
(require-init 'git)
(require-init 'filetree)
(require-init 'editing)
(require-init 'elisp-editing)
(require-init 'setup-clojure)
(require-init 'setup-js)
