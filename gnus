;----------------------------------------
(setq nnimap-list-pattern '("mbox" "Mail/*"))
;----------------------------------------



(setq gnus-nntp-server "news.sunsite.dk")
(setq gnus-nntp-server "news.eternal-september.org")
(setq nntp-authinfo-funtion 'nntp-send-authinfo)

(setq gnus-ignored-newsgroups "^^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\”]\”[#’()]")

(setq gnus-check-new-newsgroups (quote ask-server))

(setq gnus-confirm-treat-mail-like-news t)
(setq gnus-default-subscribed-newsgroups nil)
(setq gnus-gcc-externalize-attachments (quote all))
;;; (setq gnus-gcc-mark-as-read nil)
;;; (setq gnus-group-tool-bar (quote gnus-group-tool-bar-retro))

;;; (setq gnus-nntpserver-file "~/.nntpserver")

(setq gnus-other-frame-function (quote gnus))
;;; (setq gnus-refer-article-method (quote current))
;;; (setq gnus-registry-install (quote ask))
;;; (setq gnus-registry-split-strategy nil)
;;; (setq gnus-save-score t)
;;; (setq gnus-secondary-servers t)
;;; (setq gnus-select-method (quote (nntp "news.sunsite.dk" (port 119))))
;;; (setq gnus-server-unopen-status nil)
;; (setq gnus-update-message-archive-method t)
;; (setq gnus-use-correct-string-widths t)
;; (setq gnus-use-cross-reference t)
;; (setq gnus-use-frames-on-any-display t)
;; (setq gnus-use-full-window nil)
;; (setq gnus-user-agent (quote (gnus emacs type codename)))
(setq gnus-window-min-height 10)
(setq gnus-window-min-width 200)

