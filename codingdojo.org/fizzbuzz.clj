(ns )

(defn fizzbuzz
  ([i]
   (cond
     (= 0 (mod i (* 3 5))) "FizzBuzz"
     (= 0 (mod i 3))       "Fizz"
     (= 0 (mod i 5))       "Buzz"
     :else                 (str i)))
  ([start end]
   (map fizzbuzz (range start end))))
