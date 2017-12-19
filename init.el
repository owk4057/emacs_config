
;;한글 관련
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

;;시작화면 생략
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;;줄번호 표시
(global-linum-mode t)

;;주석처리 단축키
(global-set-key [f1] 'comment-or-uncomment-region)
(global-set-key [f2] 'uncomment-region)
(global-set-key [f3] 'imenu-list-smart-toggle)

;;창 크기 마우스로 조절
(window-divider-mode)


;;클립보드 복사설정
(setq x-select-enable-clipboard t)


;;패키지 저장소 설정
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;;패키지 설치
(defvar my-packages '(clojure-mode
		      cider
		      evil))
(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))


;;패키지 자동시작
(evil-mode 1)

;;글꼴 설정 
(set-face-attribute 'default nil
		    :font "Consolas-12"
		    :weight 'normal)
(setq-default line-spacing 3)
(setq-default c-basic-offset 4)


;;테마설정
(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (auto-complete-c-headers auto-complete-clang auto-complete irony evil cider clojure-mode))))
(custom-set-faces
 )





