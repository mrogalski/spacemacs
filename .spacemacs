;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     auto-completion
     better-defaults
     c-c++
     clojure
     common-lisp
     emacs-lisp
     erlang
     finance
     git
     html
     ipython-notebook
     jabber
     latex
     lua
     markdown
     moebs
     org
     python
     semantic
     shell
     shell-scripts
     spell-checking
     syntax-checking
     themes-megapack
     version-control
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         hc-zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   evil-lisp-state-major-modes '(emacs-lisp-mode clojure-mode)
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

  (setq powerline-default-separator nil)

  (evilnc-default-hotkeys)
  (menu-bar-mode)

  (require 'semantic)

  (global-semantic-idle-completions-mode)
  (global-semantic-idle-summary-mode)

  (global-linum-mode)
  (linum-relative-toggle)

  (require 'jabber)

  (define-key jabber-chat-mode-map (kbd "<C-return>") 'newline)
  (define-key jabber-chat-mode-map (kbd "RET") 'jabber-chat-buffer-send)
  (define-key jabber-roster-mode-map (kbd "RET") 'jabber-roster-ret-action-at-point)
  (setq jabber-history-dir "~/dotfiles/jabber-history/")

  (defun awesomewm-notification (from buffer text title)
    (let ((who (replace-regexp-in-string "/.*$" "" from))
          (naughty-display-string (concat "require(\"naughty\"); "
                                          "naughty.notify({title = %S, "
                                          "text = %S,"
                                          "fg=\"#000000\", "
                                          "bg=\"#eaab00\", "
                                          "position = \"bottom_right\", "
                                          "timeout = 60})"))
          (what (replace-regexp-in-string
                 "\n" "\\\\n" (replace-regexp-in-string "\\\\" "\\\\\\\\" text))))
      (shell-command (concat "echo "
                             (shell-quote-argument (format naughty-display-string who what))
                             " | awesome-client"))))

  ;;   (awesomewm-notification "sdfsdf/asdf" "somethign" "asdf
  ;; asdf" "asdf")

  (add-hook 'jabber-alert-message-hooks 'awesomewm-notification)

  (setq jabber-auto-reconnect t)
  (require 'undo-tree)
  (define-key evil-normal-state-map "U" 'undo-tree-visualize)

  (add-to-list 'company-backends 'company-files)

  (defun my-latex-mode-setup ()
    (setq-local company-backends
                (append '(company-math-symbols-latex company-latex-commands)
                        company-backends)))


  (setq TeX-save-query nil)

  (add-hook 'LaTeX-mode-hook 'my-latex-mode-setup)
  (add-hook 'TeX-mode-hook 'my-latex-mode-setup)

  (load "~/dotfiles/spacemacs/jabber-accounts")

  ;; guide key
  (setq guide-key/text-scale-amount -1)
  (setq guide-key/popup-window-position 'bottom)

  (set-face-attribute 'default nil :font "DejaVu Sans Mono 11")

  ;; anthy
  (define-obsolete-variable-alias 'last-input-char 'last-input-event "at least 19.34")
  (define-obsolete-variable-alias 'last-command-char 'last-command-event "at least 19.34")

  (require 'evil-numbers)
  (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)
  (define-key evil-normal-state-map (kbd "<kp-add>") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "<kp-subtract>") 'evil-numbers/dec-at-pt)

  (define-key evil-normal-state-map (kbd "z s") 'evil-scroll-line-to-center)
  (define-key evil-normal-state-map (kbd "z z") 'flyspell-goto-next-error)

  (setq org-agenda-files '("~/org/todo.org"
                           "~/org/events.org"))
  (setq org-return-follows-link t)

  (evil-leader/set-key "J" 'sp-join-sexp)
  (evil-leader/set-key "K" 'sp-split-sexp)
  (evil-leader/set-key "L" 'sp-forward-slurp-sexp)
  (evil-leader/set-key "H" 'sp-backward-slurp-sexp)
  (evil-leader/set-key "C-h" 'sp-backward-barf-sexp)
  (evil-leader/set-key "C-l" 'sp-forward-barf-sexp)
  (evil-leader/set-key "SPC" 'evil-lisp-state)

  (evil-leader/set-key "o a" 'align-cljlet)
  (evil-leader/set-key "f d" nil)
  (evil-leader/set-key "f D" 'delete-current-buffer-file)

  (require 'compile)
  (add-to-list 'compilation-error-regexp-alist-alist
               '(kibit "At \\([^:]+\\):\\([[:digit:]]+\\):" 1 2 nil 0))
  (add-to-list 'compilation-error-regexp-alist 'kibit)

  ;; A convenient command to run "lein kibit" in the project to which
  ;; the current emacs buffer belongs to.
  (defun kibit ()
    "Run kibit on the current project.
Display the results in a hyperlinked *compilation* buffer."
    (interactive)
    (compile "lein kibit"))

  (defun kibit-current-file ()
    "Run kibit on the current file.
Display the results in a hyperlinked *compilation* buffer."
    (interactive)
    (compile (concat "lein kibit " buffer-file-name)))

  (evil-set-initial-state 'cider-stacktrace-mode 'emacs)

  ;; (require 'rotate-text)

  ;; (add-to-list 'rotate-text-symbols
  ;;              '("+" "-"))
  ;; (add-to-list 'rotate-text-words
  ;;              '("true" "false"))

  ;; (defun my-clojure-text-rotation ()
  ;;   (setq-local rotate-text-symbols
  ;;               (append '(("neg?" "pos?")
  ;;                         ("first" "second" "nth" "last")
  ;;                         ("butfirst" "butlast")
  ;;                         ("->" "->>")
  ;;                         ("=" "not="))
  ;;                       rotate-text-symbols)))


  ;; (add-hook 'clojure-mode-hook 'my-clojure-text-rotation)
  (eval-after-load 'flycheck '(flycheck-clojure-setup))
  (add-hook 'after-init-hook #'global-flycheck-mode)



  (eval-after-load 'flycheck
    '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

  (define-key evil-normal-state-map (kbd "-") 'rotate-text)

  (require 'flycheck)
  (setq-default flycheck-flake8-maximum-complexity 10)


  (add-hook 'c-mode-common-hook 'flycheck-mode)

  (setq g++-lib-directory  "/usr/lib/gcc/x86_64-pc-linux-gnu/4.8.4/include/g++-v4")

  (require 'flycheck-google-cpplint)
  ;; Add Google C++ Style checker.
  ;; In default, syntax checked by Clang and Cppcheck.
  (flycheck-add-next-checker 'c/c++-cppcheck
                             '(warning . c/c++-googlelint))
  (add-to-list 'company-c-headers-path-system g++-lib-directory)
  (add-hook 'c++-mode-hook
            (lambda ()
              ;; (setq flycheck-c/c++-clang-executable "clang++")
              (setq flycheck-clang-language-standard "c++11")))



  (defun paste-from-system-highlighted ()
    (interactive)
    (evil-paste-from-register ?*))

  (define-key evil-normal-state-map (kbd "g p") 'paste-from-system-highlighted)

  (add-hook 'dired-mode-hook
            (lambda ()
              (define-key dired-mode-map (kbd "n") 'evil-search-next)))
  (add-hook 'spacemacs/setup-after-init-hook 'org-agenda-list)
  (setq-default evil-escape-key-sequence (kbd "C-l"))
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Okular")
     (output-html "xdg-open"))))
 '(ac-ispell-requires 4)
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-term-color-vector
   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(background-color "#202020")
 '(background-mode dark)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-color "#cccccc")
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "8d6fb24169d94df45422617a1dfabf15ca42a97d594d28b3584dc6db711e0e0b" "ef43b291f7e96826d3d9bae61434a93020d0f529d609bc8be5b331980e8448d7" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3632cf223c62cb7da121be0ed641a2243f7ec0130178722554e613c9ab3131de" "66132890ee1f884b4f8e901f0c61c5ed078809626a547dbefbb201f900d03fd8" "6209442746f8ec6c24c4e4e8a8646b6324594308568f8582907d0f8f0260c3ae" "4eaad15465961fd26ef9eef3bee2f630a71d8a4b5b0a588dc851135302f69b16" "789844278c5a75283b5015c1fc7bebe7e4cf97843b8f8cffe21fafa05e81e90a" "758da0cfc4ecb8447acb866fb3988f4a41cf2b8f9ca28de9b21d9a68ae61b181" "42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" "c69211d8567a0c5fa14b81c4cd08c4a458db7904c10d95f75d6ecd1b8baf19bd" "e24180589c0267df991cf54bf1a795c07d00b24169206106624bb844292807b9" "cea6d15a8333e0c78e1e15a0524000de69aac2afa7bb6cf9d043a2627327844e" "e6d83e70d2955e374e821e6785cd661ec363091edf56a463d0018dc49fbc92dd" "442c946bc5c40902e11b0a56bd12edc4d00d7e1c982233545979968e02deb2bc" "d143750cb9fadb9ea9a3a27e0632418d2ad09788e115a61a64dd5404fedfe178" "353861e69d6510a824905208f7290f90248f0b9354ee034fd4562b962790bdfc" "a31c86c0a9ba5d06480b02bb912ae58753e09f13edeb07af8927d67c3bb94d68" "f5e9f66da69f504cb61aacedeb8284d8f38f2e6f835fd658cac5f0ad5d924549" "bad832ac33fcbce342b4d69431e7393701f0823a3820f6030ccc361edd2a4be4" "e74d80bf86c7951b1a27994faa417f7e3b4a02f7a365ed224f032bd29f5d2d6d" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "a233249cc6f90098e13e555f5f5bf6f8461563a8043c7502fb0474be02affeea" "1a85b8ade3d7cf76897b338ff3b20409cb5a5fbed4e45c6f38c98eee7b025ad4" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "a99e7c91236b2aba4cd374080c73f390c55173c5a1b4ac662eeb3172b60a9814" "f9e975bdf5843982f4860b39b2409d7fa66afab3deb2616c41a403d788749628" "2916d16e583c17bb2a1a9d231ea8ddcb3577f8cb97179eea689e91036213ff03" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" "f5bd8485ec9ba65551bf9b9fcaa6af6bcbaebaa4591c0f30d3e512b1d77b3481" "1011be33e9843afd22d8d26b031fbbb59036b1ce537d0b250347c19e1bd959d0" "9eb5269753c507a2b48d74228b32dcfbb3d1dbfd30c66c0efed8218d28b8f0dc" "0f002f8b472e1a185dfee9e5e5299d3a8927b26b20340f10a8b48beb42b55102" "26247bcb0b272ec9a5667a6b854125450c88a44248123a03d9f242fd5c6ec36f" "4277f79f1fc78e975b66216afbb73fd774977cfac933fc5ed573569a10a1cadd" "61b188036ad811b11387fc1ef944441826c19ab6dcee5c67c7664a0bbd67a5b5" "0744f61189c62ed6d1f8fa69f6883d5772fe8577310b09e623c62c040f208cd4" "d6e27431f8cafb4a9136aebb1d4061f895b120bf88d34ff60c390d9905bd4e36" "a5beb9b1d6dc23dd8a3c204c159c9a5f1e0115ff14b5b8579d6f3ede4f3b3aee" "6c9ddb5e2ac58afb32358def7c68b6211f30dec8a92e44d2b9552141f76891b3" "8ca1c5e83bd31145f092346a6ce67dc6cbb3ba96d44e4cab1bb632433c2fa9fd" "ab3e4108e9b6d9b548cffe3c848997570204625adacef60cbd50a39306866db1" "0d19ff470ad7029d2e1528b3472ca2d58d0182e279b9ab8acd65e2508845d2b6" "0795e2c85394140788d72d34969be4acb305e4a54149e7237787d9df27832fbb" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "e96d6d21328390f703907d02b8e2a481dd62f466793161376c0c4be48b86d245" "1c6c7d5e4beaec0a54d814454106d180de7b90f8961d3edd2f6567f7c08da97e" "1af9aa2eaaaf6cfa7d3b3d0c6d653a9e05b28f11681fbf4efb75812f4a2a310a" "89586444c668bae9ec7e594bc38b3a956f31dc6cb7c851ed40411cc4ff770708" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "88b50e8bd138f92c1c55bef54013afc460c8513efbdbaf7b31da488ad8d0f427" "2f48d3e78a730496187bad754d1ba308f4124463cfd130ad315395c9de116e00" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "b9183de9666c3a16a7ffa7faaa8e9941b8d0ab50f9aaba1ca49f2f3aec7e3be9" "3103287c8d39800d6b41f8664b223f8ecdd8c6cc0b073441e174b61afdb4ce02" "3164a65923ef23e0f3dff9f9607b4da1e07ef1c3888d0f6878feef6c28357732" "930a202ae41cb4417a89bc3a6f969ebb7fcea5ffa9df6e7313df4f7a2a631434" "4a60f0178f5cfd5eafe73e0fc2699a03da90ddb79ac6dbc73042a591ae216f03" "70cf411fbf9512a4da81aa1e87b064d3a3f0a47b19d7a4850578c8d64cac2353" "ed5af4af1d148dc4e0e79e4215c85e7ed21488d63303ddde27880ea91112b07e" "96efbabfb6516f7375cdf85e7781fe7b7249b6e8114676d65337a1ffe78b78d9" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "4217c670c803e8a831797ccf51c7e6f3a9e102cb9345e3662cc449f4c194ed7d" "a655f17225ad0a7190c79602593563191b7640ddebbb8c8fbd80c9d82faff1c6" "7ed6913f96c43796aa524e9ae506b0a3a50bfca061eed73b66766d14adfa86d1" "30a8a5a9099e000f5d4dbfb2d6706e0a94d56620320ce1071eede5481f77d312" "c739f435660ca9d9e77312cbb878d5d7fd31e386a7758c982fa54a49ffd47f6e" "795dca188e2f7367fab5d3d2bbedce388c330e852afed72ff5bc79d483320fb2" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "d96416845141e99d05d45b5f99ecf46458bf97654be7d2e20184c5edcda1580a" "1934bf7e1713bf706a9cb36cc6a002741773aa42910ca429df194d007ee05c67" "7dd515d883520286fc8936ce32381fb01b978d0d7cfb6fe56f7f55d8accbf63a" "fc2782b33667eb932e4ffe9dac475f898bf7c656f8ba60e2276704fabb7fa63b" "ca229a0a89717c8a6fe5cd580ee2a85536fbafce6acb107d33cf38d52e2f492c" "56cb99174fad69feba8edd6663c592e77d77332fb4c4bb5be058ef459a426463" "c3e567dedaa800e869d879c4df8478237d6ea31fd04464086fd674c864fe4d71" "e4bc8563d7651b2fed20402fe37b7ab7cb72869f92a3e705907aaecc706117b5" "6c52612518ee6fb2b943833c7ce276db4ac5a34b4ee47aa469980030cc1e4e44" "96b023d1a6e796bab61b472f4379656bcac67b3af4e565d9fb1b6b7989356610" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "3d003561784526d83d1dd187aecf4799c72af27046bc3aa2f6d95c64e5ee4746" "d809ca3cef02087b48f3f94279b86feca896f544ae4a82b523fba823206b6040" "a507b9ca4a605d5256716da70961741b9ef9ec3246041a4eb776102e8df18418" "2affb26fb9a1b9325f05f4233d08ccbba7ec6e0c99c64681895219f964aac7af" "97a2b10275e3e5c67f46ddaac0ec7969aeb35068c03ec4157cf4887c401e74b1" "fa942713c74b5ad27893e72ed8dccf791c9d39e5e7336e52d76e7125bfa51d4c" "c01f093ab78aad6ae2c27abc47519709c6b3aaa2c1e35c712d4dd81ff1df7e31" "569dc84822fc0ac6025f50df56eeee0843bffdeceff2c1f1d3b87d4f7d9fa661" "c4e6fe8f5728a5d5fd0e92538f68c3b4e8b218bcfb5e07d8afff8731cc5f3df0" "d9fe836a71bcff99f122206f2ffaf4417a84b25dc9aa17007ffbbee6aa95366d" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "ad9fc392386f4859d28fe4ef3803585b51557838dbc072762117adad37e83585" "72407995e2f9932fda3347e44e8c3f29879c5ed88da71f06ba4887b0596959a4" "2b5aa66b7d5be41b18cc67f3286ae664134b95ccc4a86c9339c886dfd736132d" "49eea2857afb24808915643b1b5bd093eefb35424c758f502e98a03d0d3df4b1" "08efabe5a8f3827508634a3ceed33fa06b9daeef9c70a24218b70494acdf7855" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" default)))
 '(evil-want-fine-undo nil)
 '(expand-region-contract-fast-key "V")
 '(expand-region-reset-fast-key "r")
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#eee8d5")
 '(foreground-color "#cccccc")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode 9 nil (fringe))
 '(guide-key/popup-window-position (quote bottom))
 '(guide-key/text-scale-amount -2)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-background-colors
   (quote
    ("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00")))
 '(hl-paren-colors (quote ("#326B6B")))
 '(ido-enable-regexp t)
 '(jabber-avatar-verbose nil)
 '(jabber-backlog-days 10)
 '(jabber-backlog-number 20)
 '(jabber-chat-buffer-show-avatar nil)
 '(jabber-chat-local-prompt-format "[%t] me> ")
 '(jabber-chat-mode-hook (quote (flyspell-mode)) t)
 '(jabber-history-enabled t)
 '(jabber-message-alert-same-buffer t)
 '(jabber-roster-line-format " %c %-25n %u %-8s  %S")
 '(jabber-use-global-history nil)
 '(jabber-vcard-avatars-publish t)
 '(jabber-vcard-avatars-retrieve nil)
 '(paradox-github-token t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(evil-search-highlight-persist-highlight-face ((t (:background "yellow4"))))
 '(font-lock-comment-face ((t (:foreground "SpringGreen3"))))
 '(jabber-chat-prompt-foreign ((t (:foreground "lawn green" :weight bold))))
 '(jabber-chat-text-foreign ((t (:foreground "navajo white"))))
 '(jabber-rare-time-face ((t (:foreground "orchid" :underline t))))
 '(link ((t (:foreground "gold" :underline t :weight light))))
 '(sp-pair-overlay-face ((t (:inherit nil)))))
