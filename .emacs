(add-to-list 'load-path "~/.emacs.d/lisp/")

(tool-bar-mode -1)
(set-scroll-bar-mode 'right)   ; replace 'right with 'left to place it to the left

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata-g" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal)))))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(require 'cmake-mode)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
