;; Set the package installation directory so that packages aren't stored in the
;; ~/.emacs.d/elpa path.
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize the package system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install dependencies
(package-install 'htmlize)
(setq org-src-fontify-natively t)

;; Load the publishing system
(require 'ox-publish)

;; Customize the HTML output
(setq org-html-validation-link nil            ;; Don't show validation link
      org-html-head-include-scripts nil       ;; Use our own scripts
      ;; org-html-head-include-default-style nil ;; Use our own styles
      org-html-head "<script type=\"text/javascript\" src=\"./org-html-themes-personal/movies.js\"></script>"
      ;; org-html-head "<link rel=\"stylesheet\" href=\"https://beepb00p.xyz/assets/css/default.css \" />"
      )

(setq org-html-checkbox-type 'html)
;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "org-site:main"
          :recursive t
          :base-directory "./content"
          :base-extension "org"
          :publishing-function 'org-html-publish-to-html
          :publishing-directory "./docs"
          :with-author nil           ;; Don't include author name
          :with-creator nil ;; Include Emacs and Org versions in footer
          :with-date nil
          :with-toc nil                ;; Include a table of contents
          :section-numbers nil       ;; Don't include section numbers
          :with-todo-keywords t
          :html-head  "<script src=\"/org-html-themes-personal/jquery-3.6.1.min.js\"></script>"
          :html-html5-fancy t
          :time-stamp-file nil)
		   (list "org-static"
             :base-directory "./content"
		         :base-extension "css\\|js\\|png\\|svg\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
             :publishing-directory "./docs"
		         :recursive t
		         :publishing-function 'org-publish-attachment
		         )))
      ;;  (list "org"
      ;;        :components ("org-site:main" "org-static"))
      ;; ))    ;; Don't include time stamp in file


(setq org-todo-keywords
          '((sequence "TODO" "IN-PROGRESS" "DONE")))


;; (org-add-link-type
;; (org-link-set-parameters "hide-link"
;;                            :follow #'org-hide-link-open
;;                            :export #'org-hide-link-export
;;                            ;; :store #'org-hide-link-store-link
;;                            :complete #'org-hide-link-complete-file)
(org-link-set-parameters
 "color"
 (lambda (path)
   (message (concat "color "
                    (progn (add-text-properties
                            0 (length path)
                            (list 'face `((t (:foreground ,path))))
                            path) path))))
 (lambda (path desc format)
   (cond
    ((eq format 'html)
     (format "<span style=\"color:%s;\">%s</span>" path desc))
    ((eq format 'latex)
     (format "\\textcolor{%s}{%s}" path desc)))))

  ;; https://emacs.stackexchange.com/questions/16511/how-can-i-get-a-custom-org-drawer-to-open-close
  ;; https://www.emacswiki.org/emacs/ReplaceInString
  ;; https://lists.gnu.org/archive/html/emacs-orgmode/2010-11/msg00258.html
(setq org-export-with-drawers t)
(setq org-export-with-todo-keywords t)


  (defun my/org-export-format-drawer (name content)
    "Export :NOTES: and :LOGBOOK: drawers to HTML class
  or LaTeX command"
    (cond
     ((string-match "DETAILS" name)
      (setq content (replace-regexp-in-string "<p>" "" content))
      (setq content (replace-regexp-in-string "</p>" "" content))
      (format "<pre class=\"example\">%s</pre>" content))))

(setq org-html-format-drawer-function 'my/org-export-format-drawer)


;; Generate the site output
(org-publish-all t)

(message "Build complete!")

