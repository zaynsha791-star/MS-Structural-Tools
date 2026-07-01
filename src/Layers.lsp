;--------------------------------------------------
; MS Structural Tools
; Layer Manager
; Version 1.0
;--------------------------------------------------

(defun MS:CreateLayer (lay color ltype /)
    (if (not (tblsearch "LAYER" lay))
        (command
            "-layer"
            "M" lay
            "C" color lay
            "LT" ltype lay
            ""
        )
    )
)

(defun MS:CreateDefaultLayers ()

    (MS:CreateLayer "COLUMN" "1" "Continuous")
    (MS:CreateLayer "BEAM"   "2" "Continuous")
    (MS:CreateLayer "SLAB"   "3" "Continuous")
    (MS:CreateLayer "GRID"   "8" "Center")
    (MS:CreateLayer "DIM"    "7" "Continuous")
    (MS:CreateLayer "TEXT"   "7" "Continuous")
    (MS:CreateLayer "CENTER" "4" "Center")
    (MS:CreateLayer "HIDDEN" "5" "Hidden")

    (princ "\nDefault Structural Layers Created.")
)

(defun C:MSLAYERS ()

    (MS:CreateDefaultLayers)

    (princ)

)

(princ)
