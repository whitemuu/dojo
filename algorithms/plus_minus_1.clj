(require '[clojure.string :refer [split]])

(read-line)
(let [vec (mapv read-string (split (read-line) #" "))
      c   (count vec)
      counter (group-by (cond pos? :pos
                              neg? :neg
                              :else :zero) vec)]
  ;; TODO
  (println (format "%.6f" (double (/ (count (:pas counter)) c))))
  (println (format "%.6f" (double (/ (count (:neg counter)) c))))
  (println (format "%.6f" (double (/ (count (:zero counter)) c)))))

;; https://www.hackerrank.com/rest/contests/master/challenges/plus-minus/hackers/DavidYKay/download_solution
