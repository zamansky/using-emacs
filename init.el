

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
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
 '(custom-safe-themes
   '("ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" default))
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Sync/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
   '(exec-path-from-shell zerodark-theme zenburn-theme yasnippet-snippets which-key wgrep-ag web-mode virtualenvwrapper use-package undo-tree try treemacs-projectile tern-auto-complete smartparens simple-mpc shell-switcher shell-pop prodigy poet-theme pcre2el ox-reveal origami org-pdfview org-gcal org-bullets noflet mu4e-conversation mu4e-alert moe-theme mingus magit js2-refactor irony-eldoc iedit hungry-delete htmlize haskell-mode git-timemachine git-gutter ggtags flycheck eyebrowse expand-region emmet-mode elpy easy-kill dumb-jump default-text-scale counsel company-jedi company-irony color-theme-modern circe-notifications cider beacon base16-theme auto-yasnippet auctex atomic-chrome ample-zen-theme alect-themes ag ac-js2 0blayout)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
