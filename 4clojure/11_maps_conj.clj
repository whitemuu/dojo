(fn xth [coll n]
  (if (zero? n)
    (first coll)
    (xth (next coll) (dec n))))

(fn [coll]
  (loop [n 0 c coll]
    (if (nil? c)
      n
      (recur (inc n) (next c)))))

(defn rev [coll]
  (loop [r nil c coll]
    (if (nil? c)
      r
      (recur (cons (first c) r) (next c)))))

(defn fib [n]
  (case n
    1 '(1)
    (loop [s '(1 1) x (- n 2)]
      (if (= x 0)
        (reverse s)
        (recur (cons (+ (first s)
                        (second s))
                     s)
               (dec x))))))

(fn flat [xs]
  (loop [f (first xs)
         r (rest xs)]
    (cond (empty? xs) nil
          ((complement sequential?) f) (cons f (flat r))
          :else (concat (flat f) (flat r)))))
(fn [s]
  (apply str (filter #(and (>= (int %) (int \A))
                           (<= (int %) (int \Z)))
                     (seq s))))


(defn cpr [xs]
  (loop [ls xs acc nil]
    (if (empty? ls)
      (reverse acc)
      (let [f (first ls)
            r (rest ls)]
        (recur r (if (= f (first acc))
                   acc
                   (cons f acc)))))))

(defn dupseq [xs n]
  (apply concat (map (partial replicate n) xs)))


(defn my-range [st ed]
  (loop [st (dec st), ed (dec ed), ls nil]
    (if (= st ed)
      ls
      (recur st (dec ed) (cons ed ls)))))

(defn my-max [x & xs]
  (loop [max x ls xs]
    (if (empty? ls)
      max
      (recur (if (< max (first ls)) (first ls) max)
             (rest ls)))))

(defn inlv [xs ys]
  (apply concat (map list xs ys)))

#(rest (interleave (repeat (count %2) %1) %2))

#(flatten (concat (map butlast (partition %2 %1))
                  (drop (* %2 (quot (count %1) %2)) %1)))

(fn factorial [n]
  (case n
    1  1
    (* n (factorial (dec n)))))

#(map list (partition %2 %1))

#(apply concat (reverse (split-at (mod %1 (count %2)) %2)))

(fn flip [f]
  #(f %2 %1))

(fn [n xs]
  [(take n xs) (drop n xs)])

