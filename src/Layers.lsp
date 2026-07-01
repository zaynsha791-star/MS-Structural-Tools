;==========================================================
; MS Structural Tools
; Layers.lsp
; Creates all standard structural layers
;==========================================================

(defun MS:CreateLayer (name color ltype /)

  (if (not (tblsearch "LAYER" name))
    (command "-layer"
             "M" name
             "C" (itoa color) name
             "LT" ltype name
             ""
    )
  )

)

(defun MS:ProjectSetup ()

  (princ "\nCreating Structural Layers...")

  ;; Main Layers

  (MS:CreateLayer "S-GRID"      8  "CENTER")
  (MS:CreateLayer "S-COLUMN"    1  "Continuous")
  (MS:CreateLayer "S-BEAM"      2  "Continuous")
  (MS:CreateLayer "S-BRACE"     3  "Continuous")
  (MS:CreateLayer "S-PLATE"     4  "Continuous")
  (MS:CreateLayer "S-BOLT"      5  "Continuous")
  (MS:CreateLayer "S-DIM"       6  "Continuous")
  (MS:CreateLayer "S-TEXT"      7  "Continuous")
  (MS:CreateLayer "S-CENTER"    8  "CENTER")
  (MS:CreateLayer "S-HIDDEN"    9  "HIDDEN")

  (setvar "CLAYER" "S-COLUMN")

  (princ "\nProject Setup Complete.")
  (princ)

)

(princ)
