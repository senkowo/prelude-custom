;;; configs for dired

;; add features in ranger missing in dired
(use-package dired-ranger
  :ensure t)

(use-package all-the-icons-dired
  :ensure t)

;; stuff to run after opening dired
(defun my/dired-mode-hook ()
  (interactive)
  (all-the-icons-dired-mode 1))

;; dired configs
(use-package dired
  :ensure nil
  :hook (dired-mode . my/dired-init-hook))

;;
