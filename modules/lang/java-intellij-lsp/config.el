(def-package! lsp-mode
  :init
  (def-package! lsp-ui
    :after lsp-mode
    :config
    (add-hook 'lsp-mode-hook #'lsp-ui-mode))

  (def-package! lsp-intellij
    :after lsp-mode
    :init
    (add-hook 'java-mode-hook #'lsp-intellij-enable))

  (def-package! company-lsp
    :after lsp-mode
    :when (featurep! :complete company)
    :init
    (setq company-transformers nil
          company-lsp-async t
          company-lsp-cache-candidates nil)
    (set! :company-backend 'java-mode '(company-lsp))
    )
  )
