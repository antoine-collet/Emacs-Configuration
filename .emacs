(set-terminal-coding-system 'utf-8)

;; ===== Set standard indent to 2 rather that 4 ====
(setq standard-indent 2)

;; ========== Support Wheel Mouse Scrolling ==========
(mouse-wheel-mode t)

;; ===== Set the highlight current line minor mode ===== 
;; In every buffer, the line which contains the cursor will be fully
;; highlighted
(global-hl-line-mode 0)

;; ========== Place Backup Files in Specific Directory ==========
;; Enable backup files.
(setq make-backup-files t)

;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; ========== Enable Line and Column Numbering ==========
;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; ========= Set colours ==========

;; Set cursor and mouse-pointer colours
 (set-mouse-color "black")

;; set the fonts and colors I like
 (global-font-lock-mode t)
;;; Color theme based on Tango Palette. Created by danranx@gmail.com
(defun color-theme-tango ()
  "A color theme based on Tango Palette."
  (interactive)
  (color-theme-install
   '(color-theme-tango
     ((background-color . "#2e3436")
      (background-mode . dark)
      (border-color . "#888a85")
      (cursor-color . "#fce94f")
      (foreground-color . "#eeeeec")
      (mouse-color . "#8ae234"))
     ((help-highlight-face . underline)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face))
     (border ((t (:background "#888a85"))))
     (fringe ((t (:background "grey10"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#555753"))))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-constant-face ((t (:foreground "#8ae234"))))
     (font-lock-doc-face ((t (:foreground "#888a85"))))
     (font-lock-keyword-face ((t (:foreground "#729fcf" :bold t))))
     (font-lock-string-face ((t (:foreground "#ad7fa8" :italic t))))
     (font-lock-type-face ((t (:foreground "#8ae234" :bold t))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (font-lock-warning-face ((t (:bold t :foreground "#f57900"))))
     (font-lock-function-name-face ((t (:foreground "#edd400" :bold t :italic t))))
     (comint-highlight-input ((t (:italic t :bold t))))
     (comint-highlight-prompt ((t (:foreground "#8ae234"))))
     (isearch ((t (:background "#f57900" :foreground "#2e3436"))))
     (isearch-lazy-highlight-face ((t (:foreground "#2e3436" :background "#e9b96e"))))
     (show-paren-match-face ((t (:foreground "#2e3436" :background "#73d216"))))
     (show-paren-mismatch-face ((t (:background "#ad7fa8" :foreground "#2e3436"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (info-xref ((t (:foreground "#729fcf"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))
     )))

(provide 'color-theme-tango)

;; Launch a shell
;; (shell)

;; Navigation bar
(add-to-list 'load-path "/Users/spyk/.emacs.d/")
(require 'nav) 
;;(add-to-list 'load-path "ack")
(require 'ack)

;;(setq split-height-threshold nil) (setq split-width-threshold 800)

(defun split-window-horizontally (&optional arg)
            "Split selected window into two windows, side by side..."
            (interactive "P")
            (let ((size (and arg (prefix-numeric-value arg))))
              (and size (< size 0)
                   (setq size (+ (window-width) size)))
              (split-window nil size t)))

(split-window-horizontally 250)
(enlarge-window-horizontally 1000)


;;(enlarge-window-horizontally 409)