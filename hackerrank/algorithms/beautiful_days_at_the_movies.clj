(require '[clojure.string :as s])

(defn isBD? [d k]
  (= 0 (mod (Math/abs (- d (Integer/parseInt (s/reverse (str d)))))
            k)))

(let [[i j k] (mapv read-string (s/split (read-line) #" "))]
  (prn (count (filter #(isBD? % k)
                      (range i (inc j))))))
