;;; Jake Spievak honor statement Wednesday, Apr 19, 2023

(defun print-menu ()
  (format t "1 - New Deck~%2 - Shuffle Deck~%3 - Show Deck~%4 - Play Game~%5 - Play until winning hand~%6 - Quit~%~%")
  )

(defun get-user-choice ()
  (format t "Enter choice 1-6: ") 
  (defvar *user-choice* (read))
  )

(defun new-deck ()
  (defvar *deck* (list "AS" "1S" "2S" "3S" "4S" "5S" "6S" "7S" "8S" "9S" "10S" "JS" "QS" "KS" "AH" "1H" "2H" "3H" "4H" "5H" "6H" "7H" "8H" "9H" "10H" "JH" "QH" "KH" "AC" "1C" "2C" "3C" "4C" "5C" "6C" "7C" "8C" "9C" "10C" "JC" "QC" "KC" "AD" "1D" "2D" "3D" "4D" "5D" "6D" "7D" "8D" "9D" "10D" "JD" "QD" "KD"))
  )

;; I did find this algo on the internet, but I refactored it,
;; and did some research and understand how it works.
;; TODO: RESEARCH 
(defun shuffle-deck (deck)
  (loop for i from (length deck) downto 2
        do (rotatef (elt deck (random i))
                    (elt deck (1- i))))
  deck 
  )

(defun show-deck ()
  (write *deck*)
  (terpri)
  )

;; TODO: *fibo-sum*
;; TODO: is-fibo (card)
;; TODO: pull-card (*deck*)
;; for is-fibo -> (write "Fibo: ~a! ~%" *fibo-sum*)
(defun play-game ()
  (if is-fibo(pull-card (*deck*))
    (write "Fibo: ~a! ~%" *fibo-sum*)
    )
  )

(defun is-fibo (card)
  ;; logic
  )
;; TODO: car doesnt remove, use cdr to set deck to remainder of deck
(defun pull-card (deck)
  (setq card (car deck))
  (write "{}, " card)
  )

(print-menu)
(get-user-choice)
(new-deck)
(show-deck)
(shuffle-deck *deck*)
(show-deck)
(pull-card *deck*)
