
; require package �̑O�ɂ�������Ƃ��Ȃ��� require helm �Ɏ��s����
(load "~/.emacs.d/elpa/cl-lib-0.4/cl-lib")

;; �p�b�P�[�W�̒񋟌��𑝂₷
; i �C���X�g�[���}�[�N������
; d �p�b�P�[�W�폜�̃}�[�N������
; x �}�[�N�̎��s
; q �I��
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; helm
(require 'helm-config)
(helm-mode 1)

;; redo
(require 'redo+)

;; �s�Ɨ�̔ԍ������[�h���C���ɕ\��
(column-number-mode t)

;;-----------------------------------------------------------------------------
;; �����ڂ܂��
;;-----------------------------------------------------------------------------

;; �e�[�}�ύX
;(load-theme 'deeper-blue t)
;(load-theme 'misterioso t)
(load-theme 'tango-dark t)

;; �c�[���o�[�A���j���[�o�[�̕\���ݒ�
(tool-bar-mode 0)
(menu-bar-mode 1)

;;-----------------------------------------------------------------------------
;; ��{�ݒ�
;;-----------------------------------------------------------------------------

;; �N�����̃X�v���b�V����ʂ��\��
(setq inhibit-startup-message t)

;; �����R�[�h
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; �^�u�����̕���ݒ�
(setq-default tab-width 4)

;; �C���f���g�������^�u�ł͂Ȃ��󔒂ɐݒ�
(setq-default indent-tabs-mode nil)

;; �r�[�v��������
(setq visible-bell t)

(recentf-mode t)

;; �J�����g�t�@�C���̃t���p�X���^�C�g���o�[�ɕ\������
(setq frame-title-format "%f")

;; �Ή����銇�ʂ��n�C���C�g
(setq show-paren-delay 0) ; �\���܂ł̕b����ύX
(show-paren-mode t)
;(setq show-paren-style 'expression) ; �����������\��
;(set-face-background 'show-paren-match-face nil)
;(set-face-underline-p 'show-paren-match-face "yellow")


;; �o�b�N�A�b�v�t�@�C���̍쐬�ꏊ��ύX����
;(setq backup-directory-alist
;  (cons (cons ".*" (expand-file-name "~/.emacs.d/backup"))
;        backup-directory-alist))
;; �o�b�N�A�b�v�ƃI�[�g�Z�[�u�t�@�C���̍쐬�ꏊ��ύX����
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backup/"))
(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/.emacs.d/backup/") t)))

;; c-k �̂Ƃ��ɉ��s���ꏏ�ɍs��
(setq kill-whole-line t)


 ;;-----------------------------------------------------------------------------
 ;; �t�H���g�ݒ�
 ;;-----------------------------------------------------------------------------
 ;; �p��
(set-face-attribute 'default nil
                    :family "Lucida Console"
                    :height 100)
;; ���{��
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Meiryo"))
(setq face-font-rescale-alist
      '((".*Lucida Console.*" . 1.0)))

;; ���ݍs�̃n�C���C�g
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
;; �L�[�o�C���h
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
;; ����
;;-----------------------------------------------------------------------------
; helm-for-files
; helm-show-kill-ring
; helm-resume
; helm-buffers-list



