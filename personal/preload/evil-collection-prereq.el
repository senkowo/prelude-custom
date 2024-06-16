;; Evil-collection adds evil binds to a lot of modes not supported by default.
;; For it to work, `evil-want-keybinding' must be nil when evil loads.
;; To add evil support for the minibuffer, it must be loaded before helm and
;; other minibuffer-related packages load.

(setq evil-want-C-u-scroll t
      evil-respect-visual-line-mode t)
(setq evil-want-keybinding nil)
(setq evil-collection-setup-minibuffer t)
