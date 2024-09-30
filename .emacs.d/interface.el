(set-frame-font "Mono 14" nil t)
(setq default-frame-alist '((undecorated . t)))
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(setq x-select-enable-clipboard t)
(global-display-line-numbers-mode 1)
(setq-default tab-width 4)

(setq make-backup-files nil) 
(setq auto-save-default nil)

(setq dired-deletion-confirmer '(lambda (x) t))
(setq use-short-answers t)

