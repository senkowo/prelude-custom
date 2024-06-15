;; config file for pretty stuff

;; cool themes
(use-package kaolin-themes
  :ensure t
  :config
  (load-theme 'kaolin-galaxy t))

;; native transparency
(defun my/native-transparency-set (value)
  (interactive "nTransparency Value 0 - 100 opaque: ")
  (if (not (version<= "29" emacs-version))
      (message "emacs-version must be >= 29")
    ;; set alpha value for current frame and future defaults
    (set-frame-parameter nil 'alpha-background value) ; for current frame
    (add-to-list 'default-frame-alist `(alpha-background . ,value))))

(my/native-transparency-set 90)

;; prettier modeline
(use-package mood-line
  :ensure t
  :config
  (mood-line-mode 1)
  (setq mood-line-glyph-alist mood-line-glyphs-fira-code)
  (setq mood-line-format mood-line-format-default-extended))

;; dashboard
(use-package dashboard
  :ensure t
  :config
  (add-hook 'after-init-hook (lambda ()
                               (dashboard-insert-startupify-lists)))
  (add-hook 'emacs-startup-hook (lambda ()
                                  (switch-to-buffer dashboard-buffer-name)
                                  (goto-char (point-min))
                                  (redisplay)
                                  (run-hooks 'dashboard-after-initialize-hook))))
