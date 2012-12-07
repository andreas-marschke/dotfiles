
; Don't ignore my GMail-boxes
(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
;(setq gnus-summary-line-format "%U%R%z%I%(%[%4L: %-23,23f%]%) %s\n" )
(setq gnus-summary-line-format "%U[ %d ]%R %I \"%S\"\n" )
(setq gnus-select-method '(nntp "news.eternal-september.org"))
(add-to-list 'gnus-secondary-select-methods '(nntp "news.gnus.org"))
(add-to-list 'gnus-secondary-select-methods '(nntp "news.gmane.org"))
(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail" (nnimap-address "imap.gmail.com") (nnimap-server-port 993) (nnimap-stream ssl)))

(setq send-mail-function 'smtpmail-send-it)
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-default-smtp-server "smtp.googlemail.com")

(setq smtpmail-starttls-credentials '(("smtp.googlemail.com"
				       "465"
				       "andreas.marschke"
				       nil)))


