(require '[clojure.string :refer [split]])

(read-line)
(let [vec (mapv read-string (split (read-line) #" "))
      c   (count vec)
      p   (count (filter pos? vec))
      n   (count (filter neg? vec))
      z   (- c p n)]
  (println (format "%.6f" (double (/ p c))))
  (println (format "%.6f" (double (/ n c))))
  (println (format "%.6f" (double (/ z c)))))
