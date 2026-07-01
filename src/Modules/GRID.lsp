;--------------------------------------------------
; MS Structural Tools
; GRID Module v1.0
;--------------------------------------------------

(defun C:MSGRID (/ p0 nx ny sx sy i pt)

  (MS:CreateDefaultLayers)
  (MS:SetLayer "GRID")

  (setq p0 (getpoint "\nPick Grid Origin: "))

  (setq nx (getint "\nNumber of Horizontal Grids: "))
  (setq ny (getint "\nNumber of Vertical Grids: "))

  (setq sx (getreal "\nHorizontal Spacing (mm): "))
  (setq sy (getreal "\nVertical Spacing (mm): "))

  ;; Horizontal Grid Lines
  (setq i 0)
  (repeat ny
    (command "_LINE"
      (list (car p0) (+ (cadr p0) (* i sy)))
      (list (+ (car p0) (* (- nx 1) sx))
            (+ (cadr p0) (* i sy)))
      ""
    )
    (setq i (1+ i))
  )

  ;; Vertical Grid Lines
  (setq i 0)
  (repeat nx
    (command "_LINE"
      (list (+ (car p0) (* i sx)) (cadr p0))
      (list (+ (car p0) (* i sx))
            (+ (cadr p0) (* (- ny 1) sy)))
      ""
    )
    (setq i (1+ i))
  )

  (princ "\nGrid Created Successfully.")
  (princ)
)

(princ)
