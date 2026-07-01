;--------------------------------------------------
; MS Structural Tools
; Smart Column Generator
; Version 1.0
;--------------------------------------------------

(defun C:MSCOL (/ pt width depth p2)

    (MS:Msg "Smart Column Generator")

    ;; Create layers if missing
    (MS:CreateDefaultLayers)

    ;; Set Column Layer
    (MS:SetLayer "COLUMN")

    ;; Pick insertion point
    (setq pt (getpoint "\nSelect Column Center: "))

    ;; Width
    (setq width (getreal "\nColumn Width (mm): "))

    ;; Depth
    (setq depth (getreal "\nColumn Depth (mm): "))

    ;; Calculate opposite corner
    (setq p1 (list
        (- (car pt) (/ width 2))
        (- (cadr pt) (/ depth 2))
    ))

    (setq p2 (list
        (+ (car pt) (/ width 2))
        (+ (cadr pt) (/ depth 2))
    ))

    ;; Draw rectangle
    (command "RECTANG" p1 p2)

    ;; Add text
    (command "TEXT"
             pt
             (/ width 5)
             "0"
             "COLUMN"
    )

    (MS:Msg "Column Created.")

    (princ)

)

(princ)
