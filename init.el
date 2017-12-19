
;;�ѱ� ����
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

;;����ȭ�� ����
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;;�ٹ�ȣ ǥ��
(global-linum-mode t)

;;�ּ�ó�� ����Ű
(global-set-key [f1] 'comment-or-uncomment-region)
(global-set-key [f2] 'uncomment-region)
(global-set-key [f3] 'imenu-list-smart-toggle)

;;â ũ�� ���콺�� ����
(window-divider-mode)


;;Ŭ������ ���缳��
(setq x-select-enable-clipboard t)


;;��Ű�� ����� ����
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;;��Ű�� ��ġ
(defvar my-packages '(clojure-mode
		      cider
		      evil))
(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))


;;��Ű�� �ڵ�����
(evil-mode 1)

;;�۲� ���� 
(set-face-attribute 'default nil
		    :font "Consolas-12"
		    :weight 'normal)
(setq-default line-spacing 3)
(setq-default c-basic-offset 4)


;;�׸�����
(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (auto-complete-c-headers auto-complete-clang auto-complete irony evil cider clojure-mode))))
(custom-set-faces
 )





