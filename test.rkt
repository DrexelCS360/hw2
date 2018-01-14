#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "mceval-tests.rkt")
(require "lazy-mceval-tests.rkt")

(provide main)

(define hw2-tests
  (test-suite
   "Homework 2 Tests"
   lab2-prob2-tests
   lab2-prob3-tests
   lab2-prob4-tests
   prob1-tests
   prob2-tests
   prob3-tests
   prob4-tests))

(define (main . argv)
  (when (not (eq? (run-tests hw2-tests) 0))
    (exit 1)))
