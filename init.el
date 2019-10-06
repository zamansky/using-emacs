
(setq max-lisp-eval-depth 10000)
(setq max-specpdl-size 10000)
(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
 (add-to-list 'package-archives
 	     '("gnu" . "https://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives
;;	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))



(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-ivy-buffer-commands '(ivy-switch-buffer-other-window ivy-switch-buffer))
 '(elpy-rpc-backend "jedi" t)
 '(hydra-hint-display-type 'posframe)
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Sync/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-src-fontify-natively t)
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
   '(flycheck-pos-tip flycheck-clojure ox-reveal posframe processing-snippets processing-mode rg deadgrep flycheck-rust cargo racer yasnippet-classic-snippets rustic lsp-rust lsp-java company-lsp lsp-ui lsp-mode lsp yasnippet-snippets counsel-spotify exec-path-from-shell easy-kill auto-yasnippet org-pdfview pdf-tools atomic-chrome mingus simple-mpc pcre2el ag wgrep-ag wgrep haskell-mode aggressive-indent treemacs-projectile treemacs prodigy origami dumb-jump cider ggtags circe-notifications circe org-gcal mu4e-alert git-timemachine git-gutter magit hydra default-text-scale smartparens projectile auctex tern-auto-complete tern js2-refactor ac-js2 js2-mode emmet-mode web-mode iedit expand-region multiple-cursors hungry-delete beacon undo-tree virtualenvwrapper elpy flycheck doom-modeline doom-themes tao-theme poet-theme faff-theme zerodark-theme alect-themes moe-theme base16-theme zenburn-theme color-theme-modern company-jedi irony-eldoc company-irony company counsel ace-window htmlize noflet org-bullets which-key try use-package))
 '(sp-escape-quotes-after-insert nil))
(setq max-lisp-eval-depth 10000)
(setq max-specpdl-size 10000)
(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
 	     '("gnu" . "https://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives
;;	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))



(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'dired-find-alternate-file 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
