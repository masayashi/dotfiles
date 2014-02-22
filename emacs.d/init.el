
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
(require 'helm)
(helm-mode 1)

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

;; 起動時のスプラッシュ画面を非表示
(setq inhibit-startup-message t)

;; ツールバー、メニューバーの表示設定
(tool-bar-mode 0)
(menu-bar-mode 1)

;; 対応する括弧をハイライト
(show-paren-mode t)

(recentf-mode t)

;-----------------------------------------------------------------------
;;
(global-set-key "\C-o" 'next-multiframe-window)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-z" 'undo)




