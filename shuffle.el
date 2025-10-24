
(defun delete-nth (n lst)
  "Delete nᵗʰ element of list."
  (let (former latter)
    (setq former (butlast lst (- (length lst) n)))
    (setq latter (nthcdr (1+ n) lst))
    (append former latter)))
; (describe-function 'delete-nth)

(defun shuffle-list (list_LS)
  (let ((new_list_LS '()) pick_NT pick_OP)
    (while (> (length list_LS) 0)
      (setq pick_NT (random (length list_LS)))
      (setq pick_OP (nth pick_NT list_LS))
      (setq list_LS (delete-nth pick_NT list_LS))
      (setq new_list_LS (cons pick_OP new_list_LS)))
    new_list_LS))
; (describe-function 'shuffle-list)
