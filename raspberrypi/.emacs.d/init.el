;;; カッコのハイライト
(show-paren-mode t)

;; 言語を日本語にする
(set-language-environment 'Japanese)
;; 極力UTF-8とする
(prefer-coding-system 'utf-8)

;; ユーザー名とメールアドレスの設定 
(setq user-full-name "Ryodo Tanaka"
user-mail-address "GRoadPG@gmail.com")

;; 背景を透明にする(透明度合いは 95/100)
(set-frame-parameter nil 'alpha 95)

;;; 行番号の表示
;;;(line-number-mode t)
(require 'linum)
(global-linum-mode t)
(setq linum-format " %d ")

;バッファ自動再読み込み
(global-auto-revert-mode 1)

;;マウスで選択した領域を自動コピー
(setq mouse-drag-copy-region t)

;;フレーム設定
(size-indication-mode t) ; ファイルサイズを表示
(setq frame-title-format "%f") ; タイトルに編集中ファイルのフルパスを表示

;; バッファの終わりでのnewlineを禁止する
(setq next-line-add-newlines nil)
;;常に最終行に一行追加する(自動的に)
(setq require-final-newline t)


;;ファイルが #! から始まる場合， +x (実行権限) を付けて保存する
(add-hook 'after-save-hook
	  'executable-make-buffer-file-executable-if-script-p)

;;; 列番号の表示
;;;(column-number-mode t)
;;key-bind setting

;; ;;一定間隔でバッファを自動保存する.
;; (when (require 'auto-save-buffers nil t)
;;   (run-with-idle-timer 1.5 t 'auto-save-buffers))

(global-set-key (kbd "C-t") 'other-window) ;C-tで分割したwindowの切り替え
(global-set-key (kbd "C-j") 'set-mark-command) ;C-jでマークセット
(global-set-key (kbd "M-s <left>")  'windmove-left)
(global-set-key (kbd "M-s <down>")  'windmove-down)
(global-set-key (kbd "M-s <up>")    'windmove-up)
(global-set-key (kbd "M-s <right>") 'windmove-right)
(global-set-key (kbd "M-y") 'anything-show-kill-ring) ;M-yにanything-show-kill-ringを割り当て
(keyboard-translate ?\C-h ?\C-?); C-hをバックスペースに変更
;; redo+の設定
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-'") 'redo))

;;; スクロール時のカーソル位置の維持
(setq scroll-preserve-screen-position t)

;;; スクロール行数（一行ごとのスクロール）
(setq vertical-centering-font-regexp ".*")
(setq scroll-conservatively 35)
(setq scroll-margin 0)
(setq scroll-step 1)

;;; 画面スクロール時の重複行数
(setq next-screen-context-lines 1)

;;; 起動メッセージの非表示
(setq inhibit-startup-message t)

;;; スタートアップ時のエコー領域メッセージの非表示
(setq inhibit-startup-echo-area-message -1)

;;; @ backup

;;; 変更ファイルのバックアップ
(setq make-backup-files nil)

;;; 変更ファイルの番号つきバックアップ
(setq version-control nil)

;;; 編集中ファイルのバックアップ
(setq auto-save-list-file-name nil)
(setq auto-save-list-file-prefix nil)

;;; 編集中ファイルのバックアップ先
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;; 編集中ファイルのバックアップ間隔（秒）
(setq auto-save-timeout 30)

;;; 編集中ファイルのバックアップ間隔（打鍵）
(setq auto-save-interval 500)

;;;バックアップ世代数
(setq kept-old-versions 1)
(setq kept-new-versions 2)

;;; 上書き時の警告表示
(setq trim-versions-without-asking nil)

;;; 古いバックアップファイルの削除
(setq delete-old-versions t)
