;; yay rainbows!
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
;; Enable paredit for Clojure
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

(defun timestamp ()
   (interactive)
   (insert (format-time-string "%Y-%m-%dT%H:%M:%S")))
