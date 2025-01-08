(define leaf
  (lambda (value)
    (lambda (op)
      (if (= op 1)
          value
          0))))

(define root
  (lambda (left right)
    (lambda (op)
      (if (= op 1)
          0
          (if (= op 2)
              left
              (if (= op 3)
                  right
                  0))))))

(define treesum
  (lambda (node)
    (let ((nodevalue (node 1)))
      (if (= nodevalue 0)
          (+ (treesum (node 2))
             (treesum (node 3)))
          nodevalue))))