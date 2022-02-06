(require 'package)

(setq package-archives '(
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ))

(defvar required-packages '(
			    dracula-theme
			    editorconfig
			    ivy
			    magit
			    mood-line
			    org
			    projectile
			    treemacs
			    treemacs-magit
			    treemacs-projectile
			    ))

(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))
