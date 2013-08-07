(setq inhibit-startup-screen t) ; Get rid of startup screen
(setq initial-scratch-message nil) ; Set initial scratch messag to be empty
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq make-backup-files nil) ; Don't want any backup files
(electric-pair-mode t) ; Enable electric-pair-mode for bracket completion

;; Enable recentf-mode for a list of recently opened files
;(recentf-mode t)

(show-paren-mode t) ; Turn on parenthesis matching with show-paren-mode
(setq show-paren-style 'parenthesis) ; Set show-paren-mode to highlight only the matching bracket and not the text in between

;; Enable auto indent.
(global-set-key (kbd "RET") 'custom-newline-and-indent)

;; Enable linum-mode for line numbering.
(global-linum-mode t)

;; LaTeX cluster fuck shit...
(setq tex-dvi-view-command "xdvi")

;; C-mode settings
(setq-default c-default-style "linux"
	      c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode t)


;; Enable textmate minor mode
(add-to-list 'load-path "~/.emacs.d/plugins/textmate")
(require 'textmate)
(textmate-mode)

;; Disable the InteractivelyDo Things mode enabled by textmate.
; Set (ido-mode t) if interactive C-x C-f (among other things) is wanted.
(require 'ido)
(ido-mode t)

;; Enable CUA mode
(cua-mode t)

;; Keybind the centerer function to C-l
(global-set-key [(control l)]  'centerer)

;; Set color theme
(set-background-color "#2b2b2b")
(set-foreground-color "white")
(set-face-background 'modeline "DarkRed")
(set-face-foreground 'modeline "white")

;; Enable auto complete with ac-mode
(add-to-list 'load-path "/home/patrik/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/patrik/.emacs.d//ac-dict")
(ac-config-default)

;; Enable sr-speedbar. For speedbar docked to emacs window.
(add-to-list 'load-path "/home/patrik/.emacs.d/plugins/")
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil) ;make it appear on the left
;; Uncomment to enable autostart and fixed width of speedbar.
;(sr-speedbar-open)
;(with-current-buffer sr-speedbar-buffer-name
;  (setq window-size-fixed 'width))


;; Enable CEDET
;; First install latest version of CEDET. 
;(load-file "/home/patrik/.emacs.d/plugins/cedet-1.0pre6/common/cedet.el")
;; Install CEDET 1.0pre6 for compatibility with ECB

(global-ede-mode 1)
(require 'semantic/sb)
(semantic-mode 1)

;; Enable JDEE
; (Recommended for java developement with ECB)
;(add-to-list 'load-path "/home/patrik/.emacs.d/plugins/jdee-2.4.1/lisp")
;(load "jde")

;; Enable ECB
;(add-to-list 'load-path "/home/patrik/.emacs.d/plugins/ecb-2.40")
;(require 'ecb)

;;;; ====== FUNCTIONS ====== ;;;;

;; Insert date into buffer at cursor point.
(defun insert-date ()
  "Insert date at point."
  (interactive)
  (insert (format-time-string "%a %Y-%m-%d - %l:%M %p")))

;; Repositions current line. Once middle, twice
;; top, three times bottom.
(defun centerer ()
   "Repositions current line: once middle, twice top, thrice bottom"
   (interactive)
   (cond ((eq last-command 'centerer2)  ; 3 times pressed = bottom
          (recenter -1))
         ((eq last-command 'centerer1)  ; 2 times pressed = top
          (recenter 0)
          (setq this-command 'centerer2))
         (t                             ; 1 time pressed = middle
          (recenter)
          (setq this-command 'centerer1))))

;; My custom tweak of the newline-and indent. If the cursor
;; is currently on "}" it inserts a newline, backs up one line
;; and calls newline-and-indent. Else it just calls newline-and-indent.
(defun custom-newline-and-indent ()
  (interactive)
  (if (< (point) (point-max))
      (let (current-char)
	(progn
	  (setq current-char (buffer-substring-no-properties (point) (+ 1 (point))))
	  (if (equal current-char "}")
	      (progn
		(let (cursor-point)
		  (setq cursor-point (point))
		  (newline-and-indent)
		  (goto-char cursor-point)))))))
  (newline-and-indent))


(defun test ()
  (interactive)
  (let (current-char)
    (setq current-char (buffer-substring-no-properties (point) (+ 1 (point))))
    (message current-char)))

(defun test2 ()
  (interactive)
  (message (number-to-string (point))))
