; General preferences
G90                                ; send absolute coordinates...
M550 P"MPCNC"                      ; Set name
M552 S1                            ; Enable WIFI
;M453							   ; set CNC mode
    
; Drives    
M569 P0.0 S0                       ; physical drive 0.0 goes forwards
M569 P0.1 S1                       ; physical drive 0.1 goes forwards
M569 P0.2 S1                       ; physical drive 0.2 goes forwards
M569 P0.3 S0                       ; physical drive 0.3 goes forwards
M569 P0.4 S1                       ; physical drive 0.4 goes forwards
M584 X0.0:0.1 Y0.2:0.3 Z0.4        ; set drive mapping
M350 X16 Y16 Z16 I1                ; configure microstepping with interpolation
M92 X200.00 Y200.00 Z800.00        ; set steps per mm
M566 X900.00 Y900.00 Z60.00        ; set maximum instantaneous speed changes (mm/min)
M203 X12000.00 Y12000.00 Z600.00   ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00        ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 I30            ; set motor currents (mA) and motor idle factor in per cent
M84 S30                            ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z-150 S1                ; set axis minima
M208 X500 Y500 Z150 S0             ; set axis maxima

; Endstops
M574 X1 S1 P"!io0.in"              ; configure switch-type (e.g. microswitch) endstop for low end on X via pin io0.in
M574 Y1 S1 P"!io2.in"              ; configure switch-type (e.g. microswitch) endstop for low end on Y via pin io2.in
M574 Z1 S1 P"!io4.in"              ; configure switch-type (e.g. microswitch) endstop for low end on Z via pin io4.in

; Z-Probe
M558 P0 H5 F120 T6000              ; disable Z probe but set dive height, probe speed and travel speed ; TODO
