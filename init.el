(def-package-hook! company
  :post-config
  ;; these are the defaults (before I changed them)
  (setq company-idle-delay 0.2
        company-minimum-prefix-length 3))

(after! org
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

;; (global-company-mode)
