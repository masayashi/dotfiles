
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
(require 'helm)
(helm-mode 1)

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

;; �N�����̃X�v���b�V����ʂ��\��
(setq inhibit-startup-message t)

;; �c�[���o�[�A���j���[�o�[�̕\���ݒ�
(tool-bar-mode 0)
(menu-bar-mode 1)

;; �Ή����銇�ʂ��n�C���C�g
(show-paren-mode t)

(recentf-mode t)

;-----------------------------------------------------------------------
;;
(global-set-key "\C-o" 'next-multiframe-window)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-z" 'undo)




