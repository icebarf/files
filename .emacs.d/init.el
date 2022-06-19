(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("3319c893ff355a88b86ef630a74fad7f1211f006d54ce451aab91d35d018158f" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "566c61d0e40a728d5b631ac276017ace6866574ee58a4b6fbc770e436e481d57" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" default))
 '(package-selected-packages
   '(paredit use-package doom-themes smooth-scrolling magit slime))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cascadia Mono PL" :foundry "SAJA" :slant normal :weight normal :height 120 :width normal)))))


;; disable top bars

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tab-bar-mode nil)

;; disable welcome buffer
(setq inhibit-splash-screen t)

;; enable smooth scrolling
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)

;; buffer alignment in a fram
;;(setq split-width-threshold nil)
(setq shackle-rules '((slime-repl-mode :align 'below)))


;;
;; melpa configuration
;;

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)



;;
;; paredit autostart
;;

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))


;;
;; slime configuration
;;

(slime-setup '(slime-fancy slime-quicklisp slime-asdf))

;; set different avialble lisp implementations for slime
(setq slime-lisp-implementations
      '((ccl ("ccl"))
	(clisp ("clisp" "-q"))
	(cmucl ("cmucl" "--quiet"))
	(sbcl ("/usr/bin/sbcl" "--noinform") :coding-system utf-8-unix)))

;; set default lisp implementation depending upon operating system
(if (eq system-type 'darwin)
    ;; default to Clozure CL on OS X
    (setq slime-default-lisp 'ccl)
  ;; otherwise default to sbcl on other operating systems
  (setq slime-default-lisp 'sbcl))

(add-hook 'lisp-mode-hook (lambda () (run-hooks 'prelude-lisp-coding-hook)))
(add-hook 'slime-repl-mode-hook (lambda () (run-hooks 'prelude-interactive-lisp-coding-hook)))

;; start slime automatically for lisp files
(defun prelude-start-slime()
  (unless (slime-connected-p)
    (save-excursion (slime))))

(add-hook 'slime-mode-hook 'prelude-start-slime)

;; stop SLIME's REPL from grabbing <DEL> or <BACLSPACE>
(defun prelude-override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))

(add-hook 'slime-repl-mode-hook 'prelude-override-slime-repl-bindings-with-paredit)

(eval-after-load "slime"
  '(progn
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol
           slime-fuzzy-completion-in-place t
           slime-enable-evaluate-in-emacs t
           slime-autodoc-use-multiline-p t)

     (define-key slime-mode-map (kbd "TAB") 'slime-indent-and-complete-symbol)
     (define-key slime-mode-map (kbd "C-c i") 'slime-inspect)
     (define-key slime-mode-map (kbd "C-c C-s") 'slime-selector)))
