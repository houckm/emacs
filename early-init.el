;;; early-init.el --- Early Init File -*- lexical-binding: t -*-

;; Minimize garbage collection during startup
(setq gc-cons-threshold most-positive-fixnum)

;; Lower threshold back to a reasonable value after startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 10 1000 1000))))

;;; early-init.el ends here
