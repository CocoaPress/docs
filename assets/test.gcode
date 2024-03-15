M0 Congrats on getting your printer assembled!! Press Okay to continue. ;

M0 Follow this guided test to check whether everything works. This should take about 15 minutes. ;

M0 If you have any issues, please first consult help.cocoapress.com ;
M0 Join our Discord at https://discord.gg/WrDRcsBXFT ;
M0 You can also email us at hello@cocoapress.com. Ready to start? ;
M0 Test 1: Temperature ;

M0 First we will look if the nozzle and body sensors display your room temp. ;

M117 Press resume if temps look good. ;
G4 S5 ;
M25 ;

M104 T0 S400 ;
M0 We are now heating the nozzle to 40C. Please ensure the cartridge is not installed. ;
M0 When it is up to temperature please touch the nozzle section of the cartridge housing. ;

M117 Is the nozzle temperature heating up? ;
G4 S7 ;
M117 If the body temperature is heating faster, wires may be swapped. ;
G4S7 ;
M117 When it is up to ~40 please touch the -  ;
G4S7 ;
M117 - inner nozzle section of the cartridge housing. ;
G4S7 ;
M117 If it is warm, please press resume. ;
G4S4 ;
M25 ;


M104 T0 S0 ;
M104 T1 S400 ;

M0 We are now heating the body to 40C. ;
M0 When it is up to temperature please touch the inside body section of the cartridge housing. ;

M117 Is the body temperature heating up? ;
G4S7 ;
M117 When it is up to ~40 please touch the -  ;
G4S7 ;
M117 - inner body section of the cartridge housing. ;
G4S7 ;
M117 If it is warm, please press resume. ;
G4S7 ;
M25 ;

M104 T0 S0 ;
M104 T1 S0 ;

M0 Congrats - you have heat!! ;

M0 Test 2: The Motion System ;

M0 Please ensure there is nothing in the full travel of the motion system. ;

M0 The X axis will home first. The bed will move down before homing. ;
G28 X ;
M0 Now the Y axis will attempt to home. ;
G28 Y ;

M0 Nice job assembling the XY gantry! Time to check the Z probe. ;

M0 Tap the spatula that came with your printer to the inductive probe. ;

M0 Does the light turn off when (or right before) the spatula touches it? ;

M0 We are now going to check the Z Axis. This is a common place to need adjustments. ;
M0 Visit our help site to adjust the extruder height if needed help.cocoapress.com/offset ;
M0 Ready? It is helpful to have the spatula in hand to manually trigger the probe if you need. ;

G28 ;

M0 We will now do a probe repeatability test. ;

M48 P5 ;
G0 X0 Y0 ;

M0 Now we will move to the extents of the printer. ;
G90 ;


G0 X0 Y0 Z145;
M117 Wait for meeeeee! I'm comingggggg ;

G0 Z10;

G0 Y140;

G0 X150;


G0 Y0;

G0X0 ;

G0 X 75 Y140 Z25 ;

M0 Woohoo! These moves look good! Time to check the extruder motor. ;
M0 It should move up and then move down. ;

M83 ;
G0 E-10 ;
G0 E10 ;

M0 We are almost done! ;

M0 Test 3: Bed Leveling ;

M0 Please ensure the silicone baking mat is off, and that there is no debris on the bed. ;

G28 ;
G29 V4 ;

M500 ;

M0 This is looking amazing! Now please install a cartridge with a thumbscrew. ;
M0 And install the silicone baking mat. ;

M0 Please refer to the post assembly steps sheet to set the Probe Z offset. ;
M0 Set this by going to the Menu -> Probe Z Offset -> Z Probe Wizard. ;

M0 You have reached the end of the guided test. Enjoy your sweet creations :-) ;