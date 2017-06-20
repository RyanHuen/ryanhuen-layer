;;配置查询变量使用的function
(global-set-key (kbd "C-c o") 'occur-dwim)

;;设置hipple expand补全调用快捷键
(global-set-key (kbd "M-/") 'hippie-expand)

;;设置evil输入状态下移动行
(with-eval-after-load 'evil
  (global-set-key (kbd "M-j") 'evil-next-line)
  (global-set-key (kbd "M-k") 'evil-previous-line)
  (global-set-key (kbd "M-h") 'evil-backward-char)
  (global-set-key (kbd "M-l") 'evil-forward-char)
)
