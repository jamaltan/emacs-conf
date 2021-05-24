;;---------------------------------- configure the plugins ------------------------------------;;
(require 'php-mode)
  (add-hook 'php-mode-hook
	    '(lambda () (define-abbrev php-mode-abbrev-table "ex" "extends")))

(when (eq system-type 'windows-nt) (setq ffip-find-executable "d:\\\\cygwin64\\\\bin\\\\find"))
(if (eq system-type 'windows-nt)
    (progn (setq ffip-find-executable "d:\\\\cygwin64\\\\bin\\\\find"))
  (progn (setq fiplr-root-markers '(".git" ".svn"))
   (setq fiplr-ignored-globs '((directories (".git" ".svn" ".idea" "demo" "data" "cfg" "cfgbak" "cfgdemo" "config" "node_modules"))
                               (files ("*.jpg" "*.png" "*.zip" "*.gz" "*.xml" "*~"))))))
