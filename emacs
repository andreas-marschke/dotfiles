(normal-top-level-add-to-load-path '("~/.elisp/") )

(require 'keydef)

(require 'lua-mode)
(require 'man-completion)
(require 'mocp)
(require 'multi-mode)
(require 'multi-term)
(require 'pastebin)
(require 'w3m)
(require 'org-install)
(require 'iswitchb)


(load "~/.elisp/rc/emacs-rc-ccmode.el")
(load "~/.elisp/rc/emacs-rc-cmake.el")
(load "~/.elisp/rc/emacs-rc-common-hooks.el")
(load "~/.elisp/rc/emacs-rc-gdb.el")
(load "~/.elisp/rc/emacs-rc-git.el")
(load "~/.elisp/rc/emacs-rc-info.el")
(load "~/.elisp/rc/emacs-rc-ispell.el")
(load "~/.elisp/rc/emacs-rc-keydefs.el")
(load "~/.elisp/rc/emacs-rc-lisp.el")
(load "~/.elisp/rc/emacs-rc-misc-things.el")
(load "~/.elisp/rc/emacs-rc-org-mode.el")
(load "~/.elisp/rc/emacs-rc-outlinemode.el")
(load "~/.elisp/rc/emacs-rc-perl.el")
(load "~/.elisp/rc/emacs-rc-prog-misc.el")
(load "~/.elisp/rc/emacs-rc-screen.el")
(load "~/.elisp/rc/emacs-rc-sh-mode.el")
(load "~/.elisp/rc/emacs-rc-w3m.el")
(load "~/.elisp/rc/emacs-rc-yasnippet.el")

(custom-set-variables
  ;; If there is more than one, they won't work right.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; custom-set-variables was added by Custom.
 '(canlock-password "647dc58dfe29df3e23118aaabef8f78aa113039e")
 '(column-number-mode t)
 '(font-lock-mode t)
 '(ido-ubiquitous-mode t)
 '(cua-mode t nil (cua-base))
 '(develock-auto-enable nil)
 '(develock-max-column-plist nil)
 '(initial-scratch-message (shell-command-to-string "cat ~/.scratch.el"))
 '(message-courtesy-message nil)
 '(message-dont-reply-to-names nil)
 '(message-reply-to-function nil)
 '(mml-default-directory nil)
 '(mocp-theme "transparent-background")
 '(multi-term-program "/bin/bash")
 '(iswitchb-mode 1)
 '(iswitchb-case t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(user-full-name "Andreas Marschke")
 '(user-mail-address "andreas.marschke@googlemail.com")
 '(whitespace-global-mode nil)
 '(whitespace-modes (quote (awk-mode)))
 '(whitespace-silent t))

(server-start)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(dolist (m '(menu-bar-mode tool-bar-mode scroll-bar-mode blink-cursor-mode))
  (if (boundp m)
      (funcall m -1)))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)

