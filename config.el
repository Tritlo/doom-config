;;; .doom.d/config.el -*- lexical-binding: t; -*-


;; Place your private configuration here

(setq doom-theme 'doom-molokai
      doom-localleader-key ","
      doom-font (font-spec :family "Terminus" :size 18))

(after! evil-snipe
  (evil-snipe-mode -1))

(after! lsp-haskell
 (setq lsp-haskell-process-path-hie "ghcide")
 (setq lsp-haskell-process-args-hie '()))


(map! :leader
      (:after lsp-mode
        (:prefix ("l" . "LSP")
          :desc "Excute code action" "a" #'lsp-execute-code-action)))


(after! ivy
  (define-key ivy-minibuffer-map (kbd "C-h") 'ivy-backward-delete-char))

