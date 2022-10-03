(show-paren-mode 1)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(global-linum-mode t)
(require 'org)
(require 'ox-latex)
(require 'ido)
(ido-mode t)
(setq inhibit-startup-message t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(elfeed-feeds
   (quote
    ("https://xkcd.com/rss.xml" "http://ratfactor.com/atom.xml")))
 '(package-selected-packages
   (quote
    (modus-themes visual-fill-column org-present color-theme-sanityinc-solarized magit elfeed-org elfeed elpy evil gnu-apl-mode ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; vi mode :)
(require 'evil)
(evil-mode 1)

(defvar pythonIDE
  '(elpy ;; Emacs Lisp Python Environment
    )
  )
(setq elpy-rpc-python-command "python3")

;; Scans the list in pythonIDE
;; If the package listed is not already installed, install it

(mapc #'(lambda (package)
    (unless (package-installed-p package)
    (package-install package)))
    pythonIDE)


;; elfeed rss reader
(add-to-list 'evil-emacs-state-modes 'elfeed-search-mode)
(add-to-list 'evil-emacs-state-modes 'elfeed-show-mode)
(require 'use-package)
(require 'bookmark)
(use-package elfeed-org
  :ensure t
  :config
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "/home/ejo/elfeed.org")))

;; magit
(require 'magit)
(add-to-list 'load-path "~/.emacs.d/magit-pretty-graph")
(require 'magit-pretty-graph)

;; moving between window splits
(use-package window-move
  :bind (("C-j"  . windmove-down)
	 ("C-k" . windmove-up)
	 ("C-h" . windmove-left)
	 ("C-l" . windmove-right)
	 ))

;; orgmode presentation

;; Install org-present if needed
(unless (package-installed-p 'org-present)
  (package-install 'org-present))

;; Install visual-fill-column
(unless (package-installed-p 'visual-fill-column)
  (package-install 'visual-fill-column))

;; Configure fill width
(setq visual-fill-column-width 110
      visual-fill-column-center-text t)

(defun my/org-present-start ()
  ;; Tweak font sizes
  (setq-local face-remapping-alist '((default (:height 1.5) variable-pitch)
                                   (header-line (:height 4.0) variable-pitch)
                                   (org-document-title (:height 1.75) org-document-title)
                                   (org-code (:height 1.55) org-code)
                                   (org-verbatim (:height 1.55) org-verbatim)
                                   (org-block (:height 1.25) org-block)
                                   (org-block-begin-line (:height 0.7) org-block)))

  ;; Set a blank header line string to create blank space at the top
  (setq header-line-format " ")

  


  (org-display-inline-images 1)
  ;; Center the presentation and wrap lines
  (visual-fill-column-mode 1)
  (visual-line-mode 1)
  (evil-mode 0))

(defun my/org-present-end ()
  ;; Reset font customizations
  (setq-local face-remapping-alist '((default variable-pitch default)))
  ;; Clear the header line format by setting to `nil'
  (setq header-line-format nil)
  ;; Stop centering the document
  (org-display-inline-images 0)
  (visual-fill-column-mode 0)
  (visual-line-mode 0)
  (evil-mode 1))

;; Register hooks with org-present
(add-hook 'org-present-mode-hook 'my/org-present-start)
(add-hook 'org-present-mode-quit-hook 'my/org-present-end)

;; NOTE: These settings might not be ideal for your machine, tweak them as needed!
(set-face-attribute 'default nil :font "JetBrains Mono" :weight 'light :height 140)
(set-face-attribute 'fixed-pitch nil :font "JetBrains Mono" :weight 'light :height 190)
(set-face-attribute 'variable-pitch nil :font "Iosevka Aile" :weight 'light :height 1.3)
;; Load org-faces to make sure we can set appropriate faces
(require 'org-faces)

;; Hide emphasis markers on formatted text
(setq org-hide-emphasis-markers t)

;; Resize Org headings
(dolist (face '((org-level-1 . 1.2)
                (org-level-2 . 1.1)
                (org-level-3 . 1.05)
                (org-level-4 . 1.0)
                (org-level-5 . 1.1)
                (org-level-6 . 1.1)
                (org-level-7 . 1.1)
                (org-level-8 . 1.1)))
  (set-face-attribute (car face) nil :font "Iosevka Aile" :weight 'medium :height (cdr face)))

;; Make the document title a bit bigger
(set-face-attribute 'org-document-title nil :font "Iosevka Aile" :weight 'bold :height 1.3)

;; Make sure certain org faces use the fixed-pitch face when variable-pitch-mode is on
(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
(set-face-attribute 'org-table nil :inherit 'fixed-pitch)
(set-face-attribute 'org-formula nil :inherit 'fixed-pitch)
(set-face-attribute 'org-code nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)
