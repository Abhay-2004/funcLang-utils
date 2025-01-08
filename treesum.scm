(define leaf
  (lambda (value)
    (lambda (op)
      (if (= op 0)
          #t
          (if (= op 1)
              value
              #f)))))

(define root
  (lambda (left right)
    (lambda (op)
      (if (= op 0)
          #f
          (if (= op 1)
              left
              right)))))

(define isleaf
  (lambda (node)
    (node 0)))

(define getvalue
  (lambda (node)
    (node 1)))

(define getleft
  (lambda (node)
    (node 1)))

(define getright
  (lambda (node)
    (node 2)))

(define treesum
  (lambda (node)
    (if (isleaf node)
        (getvalue node)
        (+ (treesum (getleft node))
           (treesum (getright node))))))