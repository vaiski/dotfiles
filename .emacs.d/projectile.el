(require 'projectile)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq
 projectile-completion-system 'ivy)

(projectile-global-mode +1)
