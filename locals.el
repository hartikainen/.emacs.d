(require 'tramp)

;; http://atomized.org/2009/05/emacs-23-easier-directory-local-variables/
(defmacro absolute-dirname (path)
  "Return the directory name portion of a path.

If PATH is local, return it unaltered.
If PATH is remote, return the remote diretory portion of the path."
  `(cond ((tramp-tramp-file-p ,path)
          (elt (tramp-dissect-file-name ,path) 3))
         (t ,path)))

(defmacro dir-locals (dir vars)
  "Set local variables for a directory.

DIR is the base diretory to set variables on.

VARS is an alist of variables to set on files opened under DIR,
in the same format as `dir-locals-set-class-variables' expects."
  `(let ((name (intern (concat "dir-locals-"
                               ,(md5 (expand-file-name dir)))))
         (base-dir ,dir)
         (base-abs-dir ,(absolute-dirname dir)))
     (dir-locals-set-class-variables name ,vars)
     (dir-locals-set-directory-class ,dir name nil)))

(defmacro dir-locals-safe (directory variables)
  "Set local variables for a directory and add variables to
safe-local-variable-values."
  `(progn
     (dir-locals ,directory ,variables)
     (dolist (class ,variables)
       (dolist (variable (cdr class))
         (add-to-list 'safe-local-variable-values variable)))))

(dir-locals-set-class-variables 'statwing-tab-mode
                                '((nil (indent-tabs-mode . nil))
                                  (c-mode (indent-tabs-mode . nil))
                                  (web-mode (indent-tabs-mode . nil))))

(dir-locals-set-class-variables 'qualtrics-tab-mode
                                '((nil . ((indent-tabs-mode . t)))
                                  (c-mode . ((indent-tabs-mode . t)))
                                  (web-mode . ((indent-tabs-mode . t)))))

(dir-locals-set-class-variables 'swproxy-locals
                                '((nil . ((compile-command . "docker exec -it swproxy-testrunner /bin/sh -c 'SWPROXY_TESTS_UPDATE=false npm test -- --grep \"\"'")
                                          (indent-tabs-mode . t)))
                                  (c-mode . ((indent-tabs-mode . t)))
                                  (web-mode . ((indent-tabs-mode . t)))
                                  (yaml-mode . ((indent-spaces-mode . t)
                                                (indent-tabs-mode . nil)))))

(dir-locals-set-class-variables 'swproxy-statwing-etl-locals
                                '((nil . ((compile-command . "cd ~/code/swproxy && docker exec -it statwing-etl-testrunner script/test")
                                          (indent-tabs-mode . nil)))
                                  (c-mode . ((indent-tabs-mode . nil)))
                                  (web-mode . ((indent-tabs-mode . nil)))))

(dir-locals-set-class-variables 'cs294-locals
                                '((nil . ((compile-command . "docker exec -it swproxy-testrunner npm test")
                                          (indent-tabs-mode . nil)))
                                  (c-mode . ((indent-tabs-mode . nil)))
                                  (web-mode . ((indent-tabs-mode . nil)))
                                  (python-mode . ((python-indent-offset . 4)))))

(dir-locals-set-class-variables 'py-locals
                                '((nil . ((compile-command . "pushd ~/code/rl-graph-signal-recovery && source .venv/bin/activate && nosetests -m '' && popd")
                                          (indent-tabs-mode . nil)))
                                  (c-mode . ((indent-tabs-mode . nil)))))

(dir-locals-set-class-variables 'sac-locals
                                '(
                                  (python-mode . ((python-indent-offset . 4)))
                                  ))

(dir-locals-set-class-variables 'ray-locals
                                '(
                                  (python-mode . ((python-indent-offset . 4)))
                                  ))

(dir-locals-set-class-variables 'tensorflow-model-locals
                                '(
                                  (python-mode . ((python-indent-offset . 4)))
                                  ))

;; (dir-locals-set-directory-class "/Users/kristian/code/qualtrics/" 'qualtrics-tab-mode)
(dir-locals-set-directory-class "/Users/kristian/code/swproxy" 'swproxy-locals)
(dir-locals-set-directory-class "/Users/kristian/code/swproxy/statwing-etl" 'swproxy-statwing-etl-locals)
(dir-locals-set-directory-class "/Users/kristian/code/berkeley-cs294" 'cs294-locals)
(dir-locals-set-directory-class "/Users/kristian/code/cs224n" 'cs294-locals)
(dir-locals-set-directory-class "/Users/kristian/code/rl-graph-signal-recovery" 'py-locals)
(dir-locals-set-directory-class "/Users/kristian/code/softqlearning-private" 'sac-locals)
(dir-locals-set-directory-class "/Users/kristian/code/softqlearning-private2" 'sac-locals)
(dir-locals-set-directory-class "/Users/kristian/code/softqlearning-private3" 'sac-locals)
(dir-locals-set-directory-class "/Users/kristian/code/rllab" 'sac-locals)
(dir-locals-set-directory-class "/Users/kristian/code/ray" 'ray-locals)
(dir-locals-set-directory-class "/Users/kristian/code/tensorflow-models" 'tensorflow-model-locals)
(dir-locals-set-directory-class "/Users/kristian/code/glow-flow" 'tensorflow-model-locals)
