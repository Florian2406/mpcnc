; homez.g
; called to home the Z axis

G91               ; relative positioning
G1 H1 Z-150 F250  ; move to Z axis endstop and stop there (first pass)
G90               ; absolute positioning
G92 Z1.35         ; set Z offset for copper plate
G1 Z25 F600       ; Move to Z25 quickly