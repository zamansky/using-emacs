(add-to-list 'load-path "/home/zamansky/Dropbox/opt/mu/mu4e")


(require 'mu4e)

(require 'smtpmail)


(setq
 message-send-mail-function 'smtpmail-send-it
 starttls-use-gnutls t
 mu4e-sent-messages-behavior 'sent
 mu4e-sent-folder "/hunter/Sent Items"
 mu4e-drafts-folder "/hunter/Drafts"
 user-mail-address "mz631@hunter.cuny.edu"
 user-full-name "Mike Zamansky"
 smtpmail-default-smtp-server "mail.hunter.cuny.edu"
 smtpmail-local-domain "hunter.cuny.edu"
 smtpmail-smtp-user "mz631"
 smtpmail-smtp-server "mail.hunter.cuny.edu"
 smtpmail-stream-type 'starttls
 smtpmail-smtp-service 587)

(setq mu4e-maildir "~/Maildir"
      mu4e-trash-folder "/Trash"
      mu4e-refile-folder "/Archive"
      mu4e-get-mail-command "mbsync -a"
      mu4e-update-interval 300 ;; second
      mu4e-compose-signature-auto-include nil
      mu4e-view-show-images t
      mu4e-view-show-addresses t
      mu4e-attachment-dir "~/Downloads"
      mu4e-use-fancy-chars t
      )





;;; Mail directory shortcuts
(setq mu4e-maildir-shortcuts
      '(
        ("/hunter/INBOX" . ?h)
        ("/hunter/Archive" . ?H)
	("/hunter/Sent Items" .?s)
	))

;;; Bookmarks
(setq mu4e-bookmarks
      `(
	("flag:unread AND NOT flag:trashed" "Unread messages" ?u)
	("flag:unread" "Unread messages" ?n)
        ("date:today..now" "Today's messages" ?t)
        ("date:7d..now" "Last 7 days" ?w)
        ("mime:image/*" "Messages with images" ?p)
        (,(mapconcat 'identity
                     (mapcar
                      (lambda (maildir)
                        (concat "maildir:" (car maildir)))
                      mu4e-maildir-shortcuts) " OR ")
         "All inboxes" ?i)))


(require 'org-mu4e)
(setq org-mu4e-convert-to-html t)

(add-to-list 'load-path "/home/zamansky/Dropbox/opt/org-mode/contrib/lisp")
(require 'org-mime)

;; this seems to fix the babel file saving thing
(defun org~mu4e-mime-replace-images (str current-file)
  "Replace images in html files with cid links."
  (let (html-images)
    (cons
     (replace-regexp-in-string ;; replace images in html
      "src=\"\\([^\"]+\\)\""
      (lambda (text)
        (format
         "src=\"./:%s\""
         (let* ((url (and (string-match "src=\"\\([^\"]+\\)\"" text)
                          (match-string 1 text)))
                (path (expand-file-name
                       url (file-name-directory current-file)))
                (ext (file-name-extension path))
                (id (replace-regexp-in-string "[\/\\\\]" "_" path)))
           (add-to-list 'html-images
                        (org~mu4e-mime-file
												 (concat "image/" ext) path id))
           id)))
      str)
     html-images)))

(add-to-list 'mu4e-view-actions
						 '("ViewInBrowser" . mu4e-action-view-in-browser) t)




(use-package mu4e-alert
	:ensure t)


(mu4e-alert-set-default-style 'libnotify)
(add-hook 'after-init-hook #'mu4e-alert-enable-notifications)
(add-hook 'after-init-hook #'mu4e-alert-enable-mode-line-display)




;;need this for hash access
(require 'subr-x)


;; we seem to need this to fix the org-store-link issue
(org-link-set-parameters "mu4e" :follow #'org-mu4e-open :store 
#'org-mu4e-store-link)


;; contact tweaks

;;(setq mu4e-compose-complete-only-after t)
;;(setq mu4e-compose-complete-only-personal t)

