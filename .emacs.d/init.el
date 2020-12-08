(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" default))
 '(package-selected-packages
   '(haskell-mode lua-mode vterm evil-tutor doom-themes evil-visual-mark-mode dmenu exwm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default)
;(require 'exwm-systemtray)
;(exwm-systemtray-enable)
;(require 'exwm-randr)
;(exwm-randr-enable)
;(add-hook 'exwm-randr-screen-change-hook
;	            (lambda ()
;		                  (start-process-shell-command
;				                  "xrandr" nil "xrandr --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal")))
;(setq exwm-workspace-number 10
;      exwm-randr-workspace-output-plist '(0 "eDP1"))(setq exwm-input-prefix-keys '(?\M-x
;										    ?\M-:
;										    ?\C-x)
;      exwm-input-simulation-keys '(([?\s-F] . [?\C-f])
;                                   )
;      exwm-input-global-keys '(([?\M-\s-7] . (lambda (command)
;                                             (interactive (list (read-shell-command "$ ")))
;                                             (start-process-shell-command command nil command)))
;                               ;; splits
;                               ([?\s-v] . evil-window-vsplit)
;                               ([?\s-z] . evil-window-split)
;                               ;; managing workspaces
;                               ([?\s-w] . exwm-workspace-switch)
;                               ([?\s-W] . exwm-workspace-swap)
;                               ([?\s-\C-w] . exwm-workspace-move)
;                               ;; essential programs
;                               ([?\s-d] . dired)
;                               ([s-return] . term)
;                               ([?\s-p] . dmenu)
;                               ;; killing buffers and windows
;                               ([?\s-b] . ibuffer)
;                               ([?\s-B] . kill-current-buffer)
;                               ;; change window focus with super+h,j,k,l
;                               ([?\s-h] . evil-window-left)
;                               ([?\s-j] . evil-window-next)
;                               ([?\s-k] . evil-window-prev)
;                               ([?\s-l] . evil-window-right)
;                               ;; move windows around using SUPER+SHIFT+h,j,k,l
;                               ([?\s-H] . +evil/window-move-left)
;                               ([?\s-J] . +evil/window-move-down)
;                               ([?\s-K] . +evil/window-move-up)
;                               ([?\s-L] . +evil/window-move-right)
;                               ;; move window to far left or far right with SUPER+CTRL+h,l
;                               ([?\s-\C-h] . side-left-window)
;                               ([?\s-\C-j] . side-bottom-window)
;                               ([?\s-\C-l] . side-right-window);
;                               ([?\s-\C-d] . side-window-delete-all)
;                               ([?\s-\C-r] . resize-window)
;                               ;; switch workspace with SUPER+{0-9}
;                               ([?\s-0] . (lambda () (interactive) (exwm-workspace-switch-create 0)))
;                               ([?\s-1] . (lambda () (interactive) (exwm-workspace-switch-create 1)))
;                               ([?\s-2] . (lambda () (interactive) (exwm-workspace-switch-create 2)))
;                               ([?\s-3] . (lambda () (interactive) (exwm-workspace-switch-create 3)))
;                               ([?\s-4] . (lambda () (interactive) (exwm-workspace-switch-create 4)))
;                               ([?\s-5] . (lambda () (interactive) (exwm-workspace-switch-create 5)))
;                               ([?\s-6] . (lambda () (interactive) (exwm-workspace-switch-create 6)))
;                               ([?\s-7] . (lambda () (interactive) (exwm-workspace-switch-create 7)))
;                               ([?\s-8] . (lambda () (interactive) (exwm-workspace-switch-create 8)))
;                               ([?\s-9] . (lambda () (interactive) (exwm-workspace-switch-create 9)))
;                               ;; move window workspace with SUPER+SHIFT+{0-9}
;                               ([?\s-\)] . (lambda () (interactive) (exwm-workspace-move-window 0)))
;                               ([?\s-!] . (lambda () (interactive) (exwm-workspace-move-window 1)))
;                               ([?\s-@] . (lambda () (interactive) (exwm-workspace-move-window 2)))
;                               ([?\s-#] . (lambda () (interactive) (exwm-workspace-move-window 3)))
;                               ([?\s-$] . (lambda () (interactive) (exwm-workspace-move-window 4)))
;                               ([?\s-%] . (lambda () (interactive) (exwm-workspace-move-window 5)))
;                               ([?\s-^] . (lambda () (interactive) (exwm-workspace-move-window 6)))
;                               ([?\s-&] . (lambda () (interactive) (exwm-workspace-move-window 7)))
;                               ([?\s-*] . (lambda () (interactive) (exwm-workspace-move-window 8)))
;                               ([?\s-\(] . (lambda () (interactive) (exwm-workspace-move-window 9)))
;                               ;; SUPER+/ switches to char-mode (needed to pass commands in XWindows sometimes)
;                               ;; SUPER+? switches us back to line-mode
;                               ([?\s-/] . exwm-input-release-keyboard)
;                               ([?\s-?] . exwm-reset)
;                               ;; setting some toggle commands
;                               ([?\s-f] . exwm-floating-toggle-floating)
;                               ([?\s-m] . exwm-layout-toggle-mode-line)
;                               ([f11] . exwm-layout-toggle-fullscreen)))
(package-initialize)
(evil-mode 1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))
