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
(use-package kaolin-themes)
(load-theme 'kaolin-valley-dark t)

;; 
(use-package drag-stuff)
(drag-stuff-global-mode)
(drag-stuff-define-keys)

;;
(use-package rust-mode)
