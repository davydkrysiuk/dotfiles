(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))
(setq use-package-always-ensure t)
(eval-when-compile
	(require 'use-package))

;;
(use-package doom-themes)
(load-theme 'doom-plain-dark t)
; (load-theme 'doom-plan t)

;; 
(use-package drag-stuff)
(drag-stuff-global-mode)
(drag-stuff-define-keys)

(use-package nov)
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . nov-mode))
(add-to-list 'auto-mode-alist '("\\.djvu\\'" . nov-mode))

(use-package beacon)
(beacon-mode 1)
(setq beacon-color "'FFBF00")
