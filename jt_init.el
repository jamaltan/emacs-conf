(defun rtt-get-fullpath (@file-relative-path)
  (concat (file-name-directory (or load-file-name buffer-file-name)) @file-relative-path)
)
;; load plain emacs conf
(load (rtt-get-fullpath "jt_settings.el"))



;; load packages
;; (add-to-list 'load-path "~/git/xah-fly-keys/")
;; (require 'xah-fly-keys)

;; (add-to-list 'load-path "~/git/xah-find/")
;; (require 'xah-find)

;; load files
(load (rtt-get-fullpath "jt_font.el"))
(load (rtt-get-fullpath "jt_function.el"))
(load (rtt-get-fullpath "jt_abbr.el"))
(load (rtt-get-fullpath "jt_file_association.el"))
(load (rtt-get-fullpath "jt_keybinding.el"))
(load (rtt-get-fullpath "jt_keybinding_mode_specific.el"))
(load (rtt-get-fullpath "jt_settings_external_packages.el"))

;; load theme
;;(load (rtt-get-fullpath "themes/dracula-theme.el"))
(load (rtt-get-fullpath "themes/monokai-theme.el"))
;;(load (rtt-get-fullpath "themes/zenburn-theme.el"))

;; load the exec dir on Windows
;; (when (eq system-type 'windows-nt) (add-to-list 'exec-path (rtt-get-fullpath "tools")))
