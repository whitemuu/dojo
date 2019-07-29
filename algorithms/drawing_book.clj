(let [n (read-string (read-line))
      p (read-string (read-line))
      from-front (quot p 2)
      from-back (- (quot n 2) from-front)]
  (prn (min from-front from-back)))

