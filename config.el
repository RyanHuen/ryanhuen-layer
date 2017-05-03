;;默认开启行号
(global-linum-mode t)

;;开启导出到markdown
(setq org-export-backends (quote (ascii html icalendar latex md)))
(eval-after-load "org"
  '(require 'ox-md nil t))

;;变量查找工具
;; dwin = do what i mean.
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))

;;配置org-mode的自动打开所有收起的标签
(setq org-startup-folded nil)

;;转移下划线改成使用{}
(setq org-export-with-sub-superscripts '{})

;;去除导出org带目录
(setq org-export-with-toc 0)

;;导出org，标题带数字
(setq org-export-with-section-numbers t)

;;关于neotree的配置
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-show-hidden-files nil)
(setq neo-smart-open t)
