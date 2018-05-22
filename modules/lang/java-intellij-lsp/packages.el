(when (package! lsp-mode)
  (package! lsp-ui)
  (when (featurep! :completion company)
    (package! company-lsp)
    )
  (package! lsp-intellij :recipe (:fetcher github :repo "gybcb/lsp-intellij"))
 )

