(define removeConsecutive
  (lambda (lst)
    (if (null? lst)
        (list)
        (let ((rest (removeConsecutive (cdr lst))))
          (if (if (null? rest)
                  #f
                  (= (car lst) (car rest)))
              rest
              (cons (car lst) rest))))))

(define compList
  (lambda (lst)
    (removeConsecutive lst)))