;; if you throw this in ~/.emacs, it will restart existing foretowers for that directory

(add-hook 'after-save-hook (lambda () ( shell-command "firetower -r" )))
