;--------------------------------------------------
; MS Structural Tools
; Utility Functions
; Version 1.0
;--------------------------------------------------

(defun MS:Msg (txt)
    (princ (strcat "\n[MS] " txt))
)

(defun MS:CurrentLayer ()
    (getvar "CLAYER")
)

(defun MS:SetLayer (lay)
    (if (tblsearch "LAYER" lay)
        (setvar "CLAYER" lay)
    )
)

(defun MS:Point (msg)
    (getpoint msg)
)

(defun MS:Distance (p1 p2)
    (distance p1 p2)
)

(defun MS:Angle (p1 p2)
    (angle p1 p2)
)

(defun MS:Polar (pt ang dist)
    (polar pt ang dist)
)

(defun MS:Line (p1 p2)
    (command "_.LINE" p1 p2 "")
)

(defun MS:Rectangle (p1 p2)
    (command "_.RECTANG" p1 p2)
)

(defun MS:Circle (cen rad)
    (command "_.CIRCLE" cen rad)
)

(defun MS:Text (pt h txt)
    (command "_.TEXT" pt h "0" txt)
)

(defun MS:ZoomExtents ()
    (command "_.ZOOM" "_E")
)

(princ)
