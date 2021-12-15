(require '[clojure.string :refer [split]])

(let [[_ k] (mapv read-string (split (read-line) #" "))
      heights (mapv read-string (split (read-line) #" "))
      heightest (apply max heights)]
  (prn (max (- heightest k)
            0)))

