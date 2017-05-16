;; Turn off the menu bar
(menu-bar-mode -1)
(column-number-mode 1)

;; Show line numbers
;; (global-linum-mode)

;; Add themes to the load path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Load Monokai
(load-theme 'monokai)
