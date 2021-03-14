(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages (quote (company spacemacs-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable evil mode
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; Enable company mode
(add-hook 'after-init-hook 'global-company-mode)

;; Disable menus
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Use Spacemacs dark theme
(load-theme 'spacemacs-dark)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Save buffers on lose focus
(add-hook 'focus-out-hook (lambda () (save-some-buffers t nil)))

