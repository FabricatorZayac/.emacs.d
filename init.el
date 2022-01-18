;; -*- lexical-binding: t; -*-
(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
    (load custom-file))

(package-initialize)
(require 'package)
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(unless package-archive-contents
  (package-refresh-contents))

(when (file-readable-p "~/.emacs.d/configuration.org")
    (org-babel-load-file (expand-file-name "~/.emacs.d/configuration.org")))
