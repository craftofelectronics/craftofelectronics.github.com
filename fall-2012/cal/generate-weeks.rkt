#lang racket

(define page
  #<<PAGE
---
layout: default
title: Week NDXPLUS
week: NDXPLUS
---

<table>
<tr>
INDEX</tr></table>

# Week NDXPLUS

<p align="center"> 
	<img src="images/w0NDX.jpg" alt="Week 0"/>
</p>

<a id='Monday'></a>
## Monday

<a id='Tuesday'></a>
## Tuesday

<a id='Wednesday'></a>
## Wednesday

<a id='Thursday'></a>
## Thursday

<a id='Friday'></a>
## Friday

<a id='Weekend'></a>
## Weekend


PAGE
  )

(define (generate-page ndx)
  (define a (regexp-replace* "NDXPLUS" page (number->string (add1 ndx))))
  (define b (regexp-replace "NDX" a (number->string ndx)))
  (define c (regexp-replace "INDEX" b index))
  c)

(define (pad n)
  (if (< n 10)
      (format "0~a" n)
      (format "~a" n)))

(define (write-to-disk page n)
  (let ([f (format "w~a.md" (pad n))])
    (when (not (file-exists? f))
      (let ([op (open-output-file f)])
        (fprintf op page)
        (close-output-port op)))))

(define (generate-all n)
  (cond
    [(zero? n)
     (write-to-disk (generate-page n) n)]
    [else
     (write-to-disk (generate-page n) n)
     (generate-all (sub1 n))]))

(define (build-index str)
  (define lines (regexp-split "\n" str))
  (define headings '())
  (for-each (λ (line)
              (when (regexp-match "^## (.*)" line)
                (set! headings (cons line headings))))
            lines)
  (map (λ (line)
         (let ([short (regexp-replace "## " line "")])
           (format "\t<td> <a href=\"#~a\">~a</a> </td>~n" short short)))
       headings))

;; Calendar links page
#|
 (display (apply string-append
                  (map (λ (n)
                         (format "* [Week ~a](w~a.html)~n" (add1 n) n))
                       '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))))
|#

(define index (apply string-append (reverse (build-index page))))
(generate-all 15)