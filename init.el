;;; init.el -*- lexical-binding: t; -*-
;;
;; Author:  Henrik Lissner <henrik@lissner.net>
;; URL:     https://github.com/hlissner/.emacs.d
;;
;;   =================     ===============     ===============   ========  ========
;;   \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
;;   ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
;;   || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
;;   ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
;;   || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
;;   ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
;;   || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
;;   ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
;;   ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
;;   ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
;;   ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
;;   ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
;;   ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
;;   ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
;;   ||.=='    _-'                                                     `' |  /==.||
;;   =='    _-'                                                            \/   `==
;;   \   _-'                                                                `-_   /
;;    `''                                                                      ``'
;;
;; These demons are not part of GNU Emacs.
;;
;;; License: MIT

(setq package-archives
      '(("gnu" . "http://elpa.emacs-china.org/gnu/")
        ("melpa" . "http://elpa.emacs-china.org/melpa/")
        ("org"   . "http://elpa.emacs-china.org/org/")
))

(doom! :feature
      ;debugger          ; FIXME stepping through code, to help you add bugs
       eval              ; run code, run (also, repls)
       ;evil              ; come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       (lookup           ; helps you navigate your code and documentation
        +devdocs         ; ...on devdocs.io online
        +docsets)        ; ...or in Dash docsets locally
       snippets          ; my elves. They type so I don't have to
       spellcheck        ; tasing you for misspelling mispelling
       (syntax-checker   ; tasing you for every semicolon you forget
        +childframe)     ; use childframes for error popups (Emacs 26+ only)
       version-control   ; remember, remember that commit in November
       ;; workspaces        ; tab emulation, persistence & separate workspaces

       :completion
       (company          ; the ultimate code completion backend
        +auto            ; as-you-type code completion
        +childframe)     ; a nicer company UI (Emacs 26+ only)
       (ivy              ; a search engine for love and life
        +childframe)     ; uses childframes for popups (Emacs 26+ only)
      ;helm              ; the *other* search engine for love and life
      ;ido               ; the other *other* search engine...

       :ui
       ;; (popup            ; tame sudden yet inevitable temporary windows
       ;;  +all             ; catch all popups that start with an asterix
       ;;  +defaults)       ; default popup rules
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-modeline     ; a snazzy Atom-inspired mode-line
       ;; doom-quit         ; DOOM quit-message prompts when you quit Emacs
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       nav-flash         ; blink the current line after jumping
       neotree           ; a project drawer, like NERDTree for vim
       ;evil-goggles      ; display visual hints when editing in evil
       unicode           ; extended unicode support for various languages
      ;tabbar            ; FIXME an (incomplete) tab bar for Emacs
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       (window-select +ace-window)  ; visually switch windows

       :tools
       dired             ; making dired pretty [functional]
       editorconfig      ; let someone else argue about tabs vs spaces
       ein               ; tame Jupyter notebooks with emacs
       electric-indent   ; smarter, keyword-based electric-indent
       eshell            ; a consistent, cross-platform shell (WIP)
       ;; gist              ; interacting with github gists
       imenu             ; an imenu sidebar and searchable code index
       ;; impatient-mode    ; show off code over HTTP
       macos             ; MacOS-specific commands
       make              ; run make tasks from Emacs
       password-store    ; password manager for nerds
       rotate-text       ; cycle region at point between text candidates
       term              ; terminals in Emacs
       tmux              ; an API for interacting with tmux
       ;; upload            ; map local to remote projects via ssh/ftp
       magit
       ag

       :lang
       ;assembly          ; assembly for fun or debugging
       ;; cc                ; C/C++/Obj-C madness
       ;crystal           ; ruby at the speed of c
       ;clojure           ; java with a lisp
       ;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;elixir            ; erlang done right
       ;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       go                ; the hipster dialect
       ;(haskell +intero) ; a language that's lazier than I am
       hy                ; readability of scheme w/ speed of python
       ;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;julia             ; a better, faster MATLAB
       ;latex             ; writing papers in Emacs has never been so fun
       ;ledger            ; an accounting system in Emacs
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        ;+attach          ; custom attachment system
        ;+babel           ; running code in org
        ;+capture         ; org-capture in and outside of Emacs
        ;+export          ; centralized export system + more backends
        ;+present         ; Emacs for presentations
        ;; TODO +publish
        )
       ;perl              ; write code no one else can comprehend
       ;php               ; make php less awful to work with
       plantuml          ; diagrams for confusing people more
       purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;rest              ; Emacs as a REST client
       ;ruby              ; 1.step do {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;scala             ; java, but good
       sh                ; she sells (ba|z)sh shells on the C xor
       ;swift             ; who asked for emoji variables?
       typescript        ; javascript, but better
       web               ; the tubes
       java-intellij-lsp

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
      ;email             ; emacs as an email client
      ;irc               ; how neckbeards socialize
      ;rss               ; emacs as an RSS reader
      ;twitter           ; twitter client https://twitter.com/vnought
      write             ; emacs as a word processor (latex + org + markdown)

       ;; Private modules are where you place your personal configuration files.
       ;; By default, they are not tracked. There is one module included here,
       ;; the defaults module. It contains a Spacemacs-inspired keybinding
       ;; scheme and additional ex commands for evil-mode. Use it as a reference
       ;; for your own.
       ;:private
       ;default
       ;flywind

             :collab
      ;impatient-mode    ; show off code over HTTP

       :config
       ;; The default module set reasonable defaults for Emacs. It also provides
       ;; a Spacemacs-inspired keybinding scheme, a custom yasnippet library,
       ;; and additional ex commands for evil-mode. Use it as a reference for
       ;; your own modules.
       ;; (default +bindings +snippets +evil-commands)
       (default +bindings +snippets)

       )

(setq doom-font (font-spec :family "Droid Sans Mono Slashed for Powerline" :size 14))
(setq doom-unicode-font (font-spec :family "WenQuanYi Micro Hei Mono" :size 16))

;; (setq doom-leader-key "C-M-,")

(after! company
  ;; these are the defaults (before I changed them)
  (setq company-idle-delay 0.2
        company-minimum-prefix-length 3))

;; (def-package! company-childframe
;;   :after company
;;   :config
;;   (company-childframe-mode 1))

(after! org
  :post-config
  (setq +org-dir "~/flywind-nas/gtd")
  (setq org-agenda-files '("~/flywind-nas/gtd/work.org"))

  ;; (setq org-todo-keywords '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAYS(s)" "已安排(e)" "|" "DONE(d@/!)" "ABORT(a@/!)")))
  ;; (setq org-todo-keyword-faces
  ;;       '(("TODO" . "orange") ("NEXT" . "green") ("DONE" . "blue")))
  (setq org-directory "~/flywind-nas/org")
  ;; (setq org-default-notes-file (concat org-directory "/gtd.org"))
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/flywind-nas/gtd/work.org" "Todo")
           "** TODO [#B] %?\n %i\n"
           :empty-line 1)))
  ;; (setq org-columns-default-format "%70ITEM %TODO %3PRIORITY %6TAGS")

  (setq org-agenda-custom-commands
        '(
          ("w" . "任务安排")
          ("wa" "任务安排" todo "TODO")
          ("wb" "已完成任务" todo "DONE")
          )
        )
)

;; (def-package! minimal-theme
;;   :config
;;   (unless doom-theme
;;     (setq doom-theme 'doom-molokai))
;; )
(if window-system
    (setq doom-theme 'doom-nord-light)
  (setq doom-theme 'doom-one)
  )
