(global-display-line-numbers-mode t)

(require 'package)

(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/data/org/myinit.org"))

;;(setq inbibit-startup-message t)
;;(use-package try
;;    :ensure t)

;;(use-package which-key
;;    :ensure t
;;    :config (which-key-mode))

;; org-mode stuff
;;(require 'org-bullets)
;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;(tool-bar-mode -1)

;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode 1)

;; buffers C-x C-b to list
;;;;
(defalias 'list-buffers 'ibuffer)
;;;; split buffers and switch to them C-x o
;;;;(winner-mode 1)
;;;; C-x o to switch buffers
;;(use-package ace-window
;;  :ensure t
;;  :init
;;  (progn
;;    (global-set-key [remap other-window] 'ace-window)
;;    (custom-set-faces
;;     '(aw-leading-char-face
;;      ((t (:inherit ace-jump-face-foregrounnd :height 1.0)))))
;;    ))

;; combine to swiper
;;(use-package counsel
;;  :ensure t
;;  )
;; search
;;(use-package swiper
;;  :ensure t
;;  :bind (("C-s" . swiper)
;;	 ("C-r" . swiper)
;;	 ("C-c C-r" . ivy-resume)
;;	 ("M-x" . counsel-M-x)
;;	 ("C-x C-f" . counsel-find-file))
;; :config
;;  (progn
;;    (ivy-mode 1)
;;    (setq ivy-use-virtual-buffers t)
;;    (setq ivy-display-style 'fancy)
;;    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
;;    ))
    ;;    (setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
;;    (global-set-key "\C-s" 'swiper)
;;    (global-set-key (kbd "C-c C-r") 'ivy-resume)
;;    (global-set-key (kbd "<f6>") 'ivy-resume)
;;    (global-set-key (kbd "M-x") 'counsel-M-x)
;;    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;;    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;;    (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
;;    (global-set-key (kbd "<f1> l") 'counsel-find-library)
;;    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;   (global-set-key (kbd "C-c g") 'counsel-git)
;;    (global-set-key (kbd "C-c j") 'counsel-git-grep)
;;    (global-set-key (kbd "C-c k") 'counsel-ag)
;;    (global-set-key (kbd "C-x l") 'counsel-locate)
;;    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;;    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
;;    ))

;; jump to positions 
;;(use-package avy
;;  :ensure t
;;  :bind (("M-s" . avy-goto-char);
;;	 ("M-g f" . avy-goto-line)))
;; auto completion
;;(use-package auto-complete
;;  :ensure t
;;  :init
;;  (progn
;;   (ac-config-default)
;;    (global-auto-complete-mode t)
;;    ))

;;(use-package color-theme
;;  :ensure t)

;;(use-package zenburn-theme
;;  :ensure t
;;  :config (load-theme 'zenburn t))


;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(global-display-line-numbers-mode t)
;; '(package-selected-packages
;;   (quote
;;    (zenburn-theme color-theme auto-complete counsel swiper which-key use-package try org-bullets ace-window)))
;; '(show-paren-mode t)
;; '(tool-bar-mode nil))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(aw-leading-char-face ((t (:inherit ace-jump-face-foregrounnd :height 1.0)))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" default)))
 '(fci-rule-color "#383838")
 '(package-selected-packages
   (quote
    (yasnippet-snippets gnome-theme zenburn-theme which-key use-package try org-bullets counsel color-theme auto-complete ace-window)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(quote
   (nrepl-message-colors
    (quote
     ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foregrounnd :height 1.0)))))
