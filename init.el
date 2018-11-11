

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
 '(ansi-color-names-vector
   ["#212121" "#CC5542" "#6aaf50" "#7d7c61" "#5180b3" "#DC8CC3" "#9b55c3" "#bdbdb3"])
 '(custom-safe-themes
   '("08ef1356470a9d3bf363ffab0705d90f8a492796e9db489936de4bde6a4fdb19" "e03d2f414fb109f3920752b10b92323697174f49d577da9e69979edbb147a921" "ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "2a7beed4f24b15f77160118320123d699282cbf196e0089f113245d4b729ba5d" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "8868119378b8c360855febfbecbe6751dd96a83d494a4d92aca2f8056aa249f0" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "668793e975138624afffc010983862439fa01154ee96cf8da232cca81cb55d1e" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "8dce5b23232d0a490f16d62112d3abff6babeef86ae3853241a85856f9b0a6e7" "eacee5f1c2f46185d6f089d97b7953bd9fc5d5b773f72cc76c9fcb556eeba174" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" default))
 '(fci-rule-color "#dedede")
 '(line-spacing 0.2)
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Dropbox/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
<<<<<<< HEAD
   '(clojure-snippets yasnippet-classic-snippets eyebrowse zenburn-theme 0blayout ample-zen-theme poet-theme epresent ox-reveal mu4e-conversation zerodark-theme yasnippet-snippets which-key wgrep-ag web-mode virtualenvwrapper use-package undo-tree try treemacs-projectile tern-auto-complete smartparens simple-mpc shell-switcher shell-pop prodigy pcre2el origami org-pdfview org-gcal org-bullets noflet mu4e-alert moe-theme mingus js2-refactor irony-eldoc iedit hungry-delete haskell-mode git-timemachine git-gutter ggtags expand-region emmet-mode elpy dumb-jump default-text-scale counsel company-jedi company-irony color-theme-modern circe-notifications cider beacon base16-theme auto-yasnippet auctex atomic-chrome alect-themes ag ac-js2))
=======
   '(easy-kill eyebrowse zenburn-theme 0blayout ample-zen-theme poet-theme epresent ox-reveal mu4e-conversation zerodark-theme yasnippet-snippets which-key wgrep-ag web-mode virtualenvwrapper use-package undo-tree try treemacs-projectile tern-auto-complete smartparens simple-mpc shell-switcher shell-pop prodigy pcre2el origami org-pdfview org-gcal org-bullets noflet mu4e-alert moe-theme mingus js2-refactor irony-eldoc iedit hungry-delete haskell-mode git-timemachine git-gutter ggtags expand-region emmet-mode elpy dumb-jump default-text-scale counsel company-jedi company-irony color-theme-modern circe-notifications cider beacon base16-theme auto-yasnippet auctex atomic-chrome alect-themes ag ac-js2))
>>>>>>> ecb45f193dfede245a17dac44242a2ba635535aa
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   '((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
