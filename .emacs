(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("60938519bbb514efd868a4e315e547acb5ad85e13caf5da187a233efe1e2512b" "b0d39449d0f86ea6319f3796a9a9da2333165cde5bfa237bb0bc00e0c4621846" "1a39a3fbeb324f7014b5d796d77b71006642de2718044a39c2448bf532a9d852" "2288379e9e9fe0ef64e49527693cbbe8918e1d5fc1040ca66fe04f0a77f7fb84" default)))
 '(package-selected-packages
   (quote
    (org web-server uuidgen rainbow-delimiters projectile paredit markdown-mode ebib clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(defvar my-packages
  '(
    ;; just markdown here
    markdown-mode

    ;; markdown preview
    ;; markdown-preview-mode
    
    ;; makes lisp parentheses automated
    paredit
    
    ;; key bindings and higlighting for clojure
    clojure-mode

    ;; extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; integration with clojure repl
    cider

    ;; project navigation
    projectile

    ;; colourful parentheses
    rainbow-delimiters

    ;; org-mode
    org))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/customizations")

;; User interface customizations
(load "ui.el")

;; Editor and modes customizations
(load "editing.el")
