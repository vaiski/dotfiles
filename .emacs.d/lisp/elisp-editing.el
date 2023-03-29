(use-package paredit
  :ensure t
  :hook (emacs-lisp-mode
         eval-expression-minibuffer-setup
         ielm-mode
         lisp-mode
         lisp-interaction-mode
         scheme-mode))

(use-package rainbow-delimiters
  :ensure t
  :hook prog-mode)
