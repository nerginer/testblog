;(****Build and Slicing Parameters****)
;(Pix per mm X            = 13.33333 px/mm )
;(Pix per mm Y            = 13.33333 px/mm )
;(X Resolution            = 1024 px )
;(Y Resolution            = 768 px )
;(X Pixel Offset          = 0 px )
;(Y Pixel Offset          = 0 px )
;(Layer Thickness         = 0.07600 mm )
;(Layer Time              = 3000 ms )
;(Bottom Layers Time        = 2000 ms )
;(Number of Bottom Layers = 4 )
;(Blanking Layer Time     = 7000 ms )
;(Build Direction         = Bottom_Up)
;(Lift Distance           = 3 mm )
;(Slide/Tilt Value        = 45)
;(Anti Aliasing           = False)
;(Use Mainlift GCode Tab  = False)
;(Anti Aliasing Value     = 1.5 )
;(Z Lift Feed Rate        = 800.00000 mm/s )
;(Z Lift Retract Rate     = 100.00000 mm/s )
;(Flip X                  = False)
;(Flip Y                  = False)
;Number of Slices        =  99
;(****Machine Configuration ******)
;(Platform X Size         = 76.8mm )
;(Platform Y Size         = 57.6mm )
;(Platform Z Size         = 75.75mm )
;(Max X Feedrate          = 100mm/s )
;(Max Y Feedrate          = 100mm/s )
;(Max Z Feedrate          = 100mm/s )
;(Machine Type            = UV_DLP)
;********** Header Start ********
;Here you can set any G or M-Code which should be executed BEFORE the build process


G21 ;Set units to be mm
G91 ;Relative Positioning

 
;********** Header End **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 0 
;<Delay> 2000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 1 
;<Delay> 2000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 2 
;<Delay> 2000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 3 
;<Delay> 2000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 4 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 5 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 6 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 7 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 8 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 9 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 10 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 11 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 12 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 13 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 14 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 15 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 16 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 17 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 18 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 19 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 20 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 21 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 22 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 23 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 24 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 25 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 26 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 27 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 28 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 29 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 30 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 31 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 32 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 33 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 34 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 35 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 36 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 37 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 38 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 39 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 40 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 41 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 42 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 43 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 44 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 45 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 46 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 47 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 48 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 49 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 50 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 51 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 52 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 53 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 54 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 55 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 56 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 57 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 58 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 59 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 60 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 61 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 62 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 63 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 64 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 65 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 66 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 67 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 68 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 69 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 70 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 71 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 72 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 73 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 74 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 75 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 76 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 77 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 78 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 79 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 80 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 81 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 82 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 83 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 84 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 85 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 86 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 87 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 88 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 89 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 90 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 91 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 92 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 93 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 94 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 95 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 96 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 97 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
;<Slice> 98 
;<Delay> 3000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X5 Z1.0 F10
G1 X45.0 Z3.0 F800.0
G1 Z-2.924 F100.0
;<Delay> 7000
;********** Lift Sequence **********
;********** Footer Start ********
;Here you can set any G or M-Code which should be executed after the last Layer is Printed
M18 ;Disable Motors
;<Completed>
;********** Footer End ********
