(define isSortedAscending
  (lambda (lst)
    (if (null? lst)
        #t
        (if (null? (cdr lst))
            #t
            (if (< (car lst) (car (cdr lst)))
                (isSortedAscending (cdr lst))
                (if (= (car lst) (car (cdr lst)))
                    (isSortedAscending (cdr lst))
                    #f))))))

(define isSortedDescending
  (lambda (lst)
    (if (null? lst)
        #t
        (if (null? (cdr lst))
            #t
            (if (> (car lst) (car (cdr lst)))
                (isSortedDescending (cdr lst))
                (if (= (car lst) (car (cdr lst)))
                    (isSortedDescending (cdr lst))
                    #f))))))

(define isSorted
  (lambda (lst)
    (if (null? lst)
        #t
        (if (null? (cdr lst))
            #t
            (if (< (car lst) (car (cdr lst)))
                (isSortedAscending lst)
                (isSortedDescending lst))))))