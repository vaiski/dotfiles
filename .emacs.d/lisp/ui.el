(line-number-mode 1)              ;; enable line numbers
(column-number-mode 1)            ;; enable column numbers

(tooltip-mode -1)                 ;; disable tooltips
(tool-bar-mode -1)                ;; disable toolbar
(scroll-bar-mode -1)              ;; disable visible scrollbar
(blink-cursor-mode 0)             ;; disable blinking cursor

(setq create-lockfiles nil)       ;; don't create lock files
(setq inhibit-startup-message t)  ;; skip startup message
(setq ring-bell-function 'ignore) ;; turn off audible bell

;; show full path in title bar
(setq-default frame-title-format "%b (%f)")

;; use short answers (y/n instead of yes/no)
(if (boundp 'use-short-answers)
    (setq use-short-answers t)
  (fset 'yes-or-no-p 'y-or-n-p))

;; initial frame dimensions
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 110))

;; default font settings
(set-face-attribute 'default nil :height 120)
(set-face-attribute 'default nil :font "Fira Code")

(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t))

(use-package centaur-tabs
  :ensure t
  :config
  (centaur-tabs-mode t)
  (centaur-tabs-headline-match)
  (setq centaur-tabs-style "bar")
  (setq centaur-tabs-height 32)
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-set-bar 'over)
  (setq centaur-tabs-set-modified-marker t)
  (centaur-tabs-change-fonts "Fira Code" 120))
