(require 'package)

(add-to-list 'package-archives '("melpa-stable" .
				 "https://stable.melpa.org/packages/") t)

;; use these if behind a proxy
;; rsync -avz --delete --progress elpa.gnu.org::elpa/. elpa
;; rsync -avz --delete --progress rsync://melpa.org/packages/ melpa
;; (add-to-list 'package-archives
;; 	     '("melpa_local" . "/ccc/dsku/nfs-server/user/cont001/ocre/fovetb/work/products/user/emacs-mirrors/melpa/") t)
;; (add-to-list 'package-archives
;; 	     '("elpa_local" . "/ccc/dsku/nfs-server/user/cont001/ocre/fovetb/work/products/user/emacs-mirrors/elpa/") t)

;; (setq package-check-signature nil)

(setq packages '(company lsp-mode yaml-mode json-mode dockerfile-mode cmake-mode magit bash-completion))
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

(require 'company)
(global-company-mode t)
(require 'lsp-mode)
(add-hook 'c++-mode-hook #'lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(bash-completion magit json-mode dockerfile-mode yaml-mode lsp-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liga SFMono Nerd Font" :foundry "PfEd" :slant normal :weight normal :height 88 :width normal)))))

(tool-bar-mode -1)
(set-scroll-bar-mode 'right)   ; replace 'right with 'left to place it to the left

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(global-display-line-numbers-mode)

(add-to-list 'load-path "~/.emacs.d/emacs-one-themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-one-themes")

(load-theme 'one-dark t)

;; YAML mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(require 'json-mode)
(require 'dockerfile-mode)
(require 'cmake-mode)
(require 'magit)

(require 'bash-completion)
(autoload 'bash-completion-dynamic-complete
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
          'bash-completion-dynamic-complete)
