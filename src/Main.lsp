;==========================================================
; MS Structural Tools v1.0
; Main.lsp
; Author: Zayn + ChatGPT
;==========================================================

(defun MS:LoadModules ()

  (load "Layers.lsp")
  (load "Utils.lsp")
  (load "Settings.lsp")

  (load "Modules\\GRID.lsp")
  (load "Modules\\COL.lsp")
  (load "Modules\\BEAM.lsp")
  (load "Modules\\BRACE.lsp")
  (load "Modules\\PLATE.lsp")
  (load "Modules\\DIM.lsp")
  (load "Modules\\TEXT.lsp")
  (load "Modules\\EXPORT.lsp")

  (princ "\nMS Structural Tools Loaded.")
)

(defun c:MS ()

  (MS:LoadModules)

  (setq choice
        (getint
        "\n==============================\
        \n MS STRUCTURAL TOOLS\
        \n==============================\
        \n1 - Project Setup\
        \n2 - Grid Generator\
        \n3 - Steel Columns\
        \n4 - Beams\
        \n5 - Bracing\
        \n6 - Base Plates\
        \n7 - Auto Dimension\
        \n8 - Text Labels\
        \n9 - Export\
        \n0 - Exit\
        \nSelect Option: "
        )
  )

  (cond

    ((= choice 1)(MS:ProjectSetup))
    ((= choice 2)(MS:GRID))
    ((= choice 3)(MS:COL))
    ((= choice 4)(MS:BEAM))
    ((= choice 5)(MS:BRACE))
    ((= choice 6)(MS:PLATE))
    ((= choice 7)(MS:DIM))
    ((= choice 8)(MS:TEXT))
    ((= choice 9)(MS:EXPORT))

  )

  (princ)
)

(princ "\nType MS to start MS Structural Tools.")
(princ)
