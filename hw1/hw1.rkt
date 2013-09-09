;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
"Ex1"
(define number-of-days 366)
(define number-of-hours 24)
(define number-of-minutes 60)
(define number-of-seconds 60)

(* number-of-days number-of-hours number-of-minutes number-of-seconds)

"Ex2"
(define num1 100/3)
(define num2 (/ (+ 100 3) (+ 3 3)))

(> num1 num2)

"Ex3"
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celcius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778

(define (f->c x) (* (- x 32) (/ 5 9)))

(check-expect (f->c 32) 0)
;(check-expect (f->c 100) 37.77777777777778)
(check-expect (f->c 212) 100)

"Ex4"
; tip : Number Number -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4

(define (tip num percentage) (* num percentage))

(check-expect (tip 10 0.15) 1.5)
(check-expect (tip 20 0.17) 3.4)
(check-expect (tip 0 0) 0)
(check-expect (tip 0 1.00) 0)
(check-expect (tip 100 0) 0)
(check-expect (tip 100 1.00) 100)

"Ex5"
; sq : Number -> Number
; GIVEN: a number
; RETURNS: the square of a number.
; Examples:
; (sq 0)  => 0
; (sq 10)  => 100

(define (sq num) (* num num))

(check-expect (sq 0) 0)
(check-expect (sq 10) 100)

"Ex6"
; quadratic-root : Number Number Number -> Number
; GIVEN: three quadratic coefficients a b c
; RETURNS: the root of the corresponding quadratic equation.
; Examples:
; (quadratic-root 1 2 1)  => 1
; (quadratic-root 2 0 -4)  => 2

(define (quadratic-root a b c) (/ ( - (sqrt (- (* b b) (* 4 a c))) b) 
                                  (* 2 a)))
  
(check-expect (quadratic-root 1 2 1) -1)
(check-expect (quadratic-root 2 0 -8) 2)

"Ex7"
; circumference : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r.
; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0

(define (circumference r) (* 2 pi r))

;(check-expect (circumference 1) 6.283185307179586)
(check-expect (circumference 0) 0)

"Ex8"
(define self-defined-pi 3.1415)
; circ-area : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * self-defined-pi * r.
; Examples:
;(circ-area 1)  =>  6.283
;(circ-area 5)  =>  31.415
;(circ-area 7)  =>  43.981

(define (circ-area r) (* 2 self-defined-pi r))

(check-expect (circ-area 1) 6.283)
(check-expect (circ-area 5) 31.415)
(check-expect (circ-area 7) 43.981)

"Ex9"
; self-defined-even? : Number -> boolean
; GIVEN: a integer
; RETURNS: true if this number is divisible by 2, and false otherwise.
; Examples:
;(self-defined-even? 0)  =>  true
;(self-defined-even? -2)  =>  true
;(self-defined-even? 11)  =>  false

(define (self-defined-even? x) (equal? (remainder x 2) 0))

(check-expect (self-defined-even? 0) true)
(check-expect (self-defined-even? -2) true)
(check-expect (self-defined-even? 11) false)

"Ex10"
; sum-of-two-larger-ones : Number Number Number-> Number
; GIVEN: three numbers
; RETURNS: the sum of two larger numbers
; Examples:
;(sum-of-two-larger-ones 1 2 3)  =>  5
;(sum-of-two-larger-ones 200 1 15)  =>  215
;(sum-of-two-larger-ones -100 40 0)  =>  40

(define (sum-of-two-larger-ones x y z)
  (cond [(and (<= x y) (<= x z)) (+ y z)]
        [(and (<= y x) (<= y z)) (+ x z)]
        [(and (<= z x) (<= z y)) (+ x y)]))

(check-expect (sum-of-two-larger-ones 1 2 3) 5)
(check-expect (sum-of-two-larger-ones 200 1 15) 215)
(check-expect (sum-of-two-larger-ones 0 40 -100) 40)

"Ex11"
;make-posn : x y → posn

"Ex12"
;results:
;(make-posn 5 3)
;false
;false
;true
;8
;15

"Ex13"
;construct a posn that x is true and y is false.
;true

"Ex14"
;make-student
;student?
;student-id
;student-name
;student-major

