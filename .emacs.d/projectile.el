(require 'projectile)

(projectile-global-mode +1)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-project-search-path '(
				       "~/projects/"
				       "~/work/"
				       ))
