;; enable the line no on global
(global-display-line-numbers-mode t )
;; disable the menu
(menu-bar-mode -1)
;; disable the scroll bar
(if (eq system-type 'windows-nt)
    (toggle-scroll-bar -1)
  )
;; disable the bar mode
(if (eq system-type 'windows-nt)
    (tool-bar-mode -1)
  )
;; turn on highlighting current line
(global-hl-line-mode 1)
;; turn on bracket match highlight
(show-paren-mode 1)
;; remember cursor position. When file is opened, put cursor at last position
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode 1))
;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; show cursor position within line
(column-number-mode 1)
;; stop creating those backup~ files
(setq make-backup-files nil)
;; stop creating those #auto-save# files
(setq auto-save-default nil)
;; stop emacs's backup changing the file's creation date of the original file
(setq backup-by-copying t)
;; when a file is updated outside emacs, make it update if it's already opened in emacs
(global-auto-revert-mode 1)
;; keep a list of recently opened files
(require 'recentf)
(recentf-mode 1)
;; save/restore opened files
(desktop-save-mode 0)
;; open down arrow key move by screen lines
(setq line-move-visual nil)
;; save minibuffer history
(savehist-mode 1)
;; big minibuffer height, for ido to show choices vertically
(setq max-mini-window-height 0.5)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
;; disable the font cache
(setq inhibit-compacting-font-caches t)
;; hide welcome screen
(setq inhibit-startup-screen t)
;; enable the copy to the clipboard
(setq x-select-enable-clipboard t)
;; set font on windows
(set-face-attribute 'default nil :family "Consolas" :height 110)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))
; install the missing packages
(dolist (package package-selected-packages)
  (unless (package-installed-p package)
    (package-install package)))

;; enable Company mode in all buffers
(add-hook 'after-init-hook 'global-company-mode)
