;;; -*- lexical-binding: t; -*-

(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(setq make-backup-files nil)

(require 'org) 
(require 'ox)

(when (executable-find "latexmk")
  (setq org-latex-pdf-process '("latexmk -pdf %f")))

(setq org-export-with-smart-quotes t
      org-confirm-babel-evaluate nil)

(add-to-list 'load-path "~/.emacs.d/my-lisp/")
(require 'my-website)
