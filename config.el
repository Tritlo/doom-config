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

(exec-path-from-shell-copy-env "NIX_GHC_LIBDIR")

(map! :leader
      (:after lsp-mode
        (:prefix ("l" . "LSP")
          :desc "Excute code action" "a" #'lsp-execute-code-action
          :desc "Go to definition" "d" #'lsp-find-definition
          :desc "Glance at doc" "g" #'lsp-ui-doc-glance
          (:prefix ("u" . "LSP UI")
            :desc "Toggle doc mode" "d" #'lsp-ui-doc-mode
            :desc "Toggle sideline mode"  "s" #'lsp-ui-sideline-mode
            :desc "Glance at doc" "g" #'lsp-ui-doc-glance
            :desc "Toggle imenu"  "i" #'lsp-ui-imenu
            )
          )))


(after! ivy
  (define-key ivy-minibuffer-map (kbd "C-h") 'ivy-backward-delete-char))
