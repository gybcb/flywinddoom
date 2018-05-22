(def-package! lsp-mode
  :init
  (def-package! lsp-ui
    :after lsp-mode
    :init
    (add-hook 'lsp-after-open-hook #'lsp-ui-mode))

  (def-package! lsp-intellij
    :after lsp-mode
    :init
    (add-hook 'java-mode-hook #'lsp-intellij-enable))

  (def-package! company-lsp
    :after lsp-mode
    :when (featurep! :complete company)
    :init
    (setq company-lsp-enable-snippet t
          company-lsp-cache-candidates t)
    (push 'company-lsp company-backends)
    (push 'java-mode company-global-modes)
    )
  )
