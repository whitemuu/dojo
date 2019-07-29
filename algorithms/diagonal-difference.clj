;;
;; Complete the 'diagonalDifference' function below.
;;
;; The function is expected to return an INTEGER.
;; The function accepts 2D_INTEGER_ARRAY arr as parameter.
;;

(defn sumdia [arr]
  (reduce + (map nth arr (range))))

(defn diagonalDifference [arr]
  (Math/abs (- (sumdia arr)
               (sumdia (map reverse arr)))))

(def fptr (get (System/getenv) "OUTPUT_PATH"))

(def n (Integer/parseInt (clojure.string/trim (read-line))))

(def arr [])

(doseq [_ (range n)]
  (def arr (conj arr (vec (map #(Integer/parseInt %)
                               (clojure.string/split (clojure.string/trimr (read-line))
                                                     #" "))))))

(def result (diagonalDifference arr))

(spit fptr (str result "\n") :append true)
