
; require package の前にこれを入れとかないと require helm に失敗する
(load "~/.emacs.d/elpa/cl-lib-0.4/cl-lib")

;; パッケージの提供元を増やす
; i インストールマークをつける
; d パッケージ削除のマークをつける
; x マークの実行
; q 終了
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; helm
(require 'helm-config)
(helm-mode 1)

;; redo
(require 'redo+)

;; 行と列の番号をモードラインに表示
(column-number-mode t)

;;-----------------------------------------------------------------------------
;; 見た目まわり
;;-----------------------------------------------------------------------------

;; テーマ変更
;(load-theme 'deeper-blue t)
;(load-theme 'misterioso t)
(load-theme 'tango-dark t)

;; ツールバー、メニューバーの表示設定
(tool-bar-mode 0)
(menu-bar-mode 1)

;;-----------------------------------------------------------------------------
;; 基本設定
;;-----------------------------------------------------------------------------

;; 起動時のスプラッシュ画面を非表示
(setq inhibit-startup-message t)

;; 文字コード
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; タブ文字の幅を設定
(setq-default tab-width 4)

;; インデント文字をタブではなく空白に設定
(setq-default indent-tabs-mode nil)

;; ビープ音を消す
(setq visible-bell t)

(recentf-mode t)

;; カレントファイルのフルパスをタイトルバーに表示する
(setq frame-title-format "%f")

;; 対応する括弧をハイライト
(setq show-paren-delay 0) ; 表示までの秒数を変更
(show-paren-mode t)
;(setq show-paren-style 'expression) ; 式内を強調表示
;(set-face-background 'show-paren-match-face nil)
;(set-face-underline-p 'show-paren-match-face "yellow")


;; バックアップファイルの作成場所を変更する
;(setq backup-directory-alist
;  (cons (cons ".*" (expand-file-name "~/.emacs.d/backup"))
;        backup-directory-alist))
;; バックアップとオートセーブファイルの作成場所を変更する
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backup/"))
(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/.emacs.d/backup/") t)))

;; c-k のときに改行を一緒に行う
(setq kill-whole-line t)


 ;;-----------------------------------------------------------------------------
 ;; フォント設定
 ;;-----------------------------------------------------------------------------
 ;; 英語
(set-face-attribute 'default nil
                    :family "Lucida Console"
                    :height 100)
;; 日本語
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Meiryo"))
(setq face-font-rescale-alist
      '((".*Lucida Console.*" . 1.0)))

;; 現在行のハイライト
(defface my-hl-line-face
  '((((class color) (background dark))
     (:background "brown" t))
    (((class color) (background light))
     (:background "LightGoldenrodYellow" t))
    (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)

;;-----------------------------------------------------------------------------
;; キーバインド
;;-----------------------------------------------------------------------------
(define-key global-map (kbd "C-o") 'other-window)
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-z") 'undo)
(define-key global-map (kbd "C-;") 'helm-mini)
(define-key global-map (kbd "C-m") 'newline-and-indent)
(define-key global-map (kbd "C-S-z") 'redo)

(define-key global-map (kbd "M-g") 'goto-line)

(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-find-file-map (kbd "TAB") 'helm-execute-persistent-action)

;;-----------------------------------------------------------------------------
;; メモ
;;-----------------------------------------------------------------------------
; helm-for-files
; helm-show-kill-ring
; helm-resume
; helm-buffers-list



