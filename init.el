;; stuff automatically added
;;

;; Our stuff

(setq inhibit-startup-message t)
(tool-bar-mode -1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(use-package try
	:ensure t)

(use-package which-key
	:ensure t 
	:config
	(which-key-mode))


;; Org-mode stuff
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))



;; using swiper so ido no longer needed
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode 1)

(defalias 'list-buffers 'ibuffer)
;; (defalias 'list-buffers 'ibuffer-other-window)

; If you like a tabbar 
;(use-package tabbar
;  :ensure t
;  :config
;  (tabbar-mode 1))


(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0))))) 
    ))


;; it looks like counsel is a requirement for swiper
(use-package counsel
  :ensure t
  )

(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'fancy))


(use-package swiper
  :ensure try
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-word-1)) ;; changed from char as per jcs

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

(use-package color-theme
  :ensure t)

(use-package zenburn-theme
  :ensure t
  :config (load-theme 'zenburn t))
