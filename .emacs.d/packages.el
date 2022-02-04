(require 'package)

(setq package-archives '(
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ))

(when (< emacs-major-version 27) (package-initialize))

(defvar required-packages '(
			    dracula-theme
			    ivy
			    magit
			    org
			    projectile
			    ripgrep
			    treemacs
			    treemacs-projectile
			    ))

(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))
