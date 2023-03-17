% Hello ASP!

% VariationPoint & Variant
vp_def("Body").
v_def("White_Body","Body",350).

vp_def("Destination").
v_def("EU_typeA","Destination",200).
v_def("EU_typeB","Destination",350).

vp_def("Drive_Type").
v_def("2WD","Drive_Type",125).
v_def("4WD","Drive_Type",200).

vp_def("Engine").
v_def("V4","Engine",120).
v_def("V6","Engine",200).

vp_def("Grade").
v_def("Low","Grade", 0).
v_def("Middle","Grade", 0).
v_def("Upper","Grade", 0).

vp_def("Sun_Roof").
v_def("Available","Sun_Roof",35).
v_def("Not_available","Sun_Roof",70).

vp_def("Tire").
v_def("15_inch_Tire","Tire",90).
v_def("16_inch_Tire","Tire",110).
v_def("17_inch_Tire","Tire",130).
v_def("18_inch_Tire","Tire",150).

vp_def("Transmission").
v_def("AT_typeA","Transmission",115).
v_def("AT_typeB","Transmission",125).
v_def("CVT","Transmission",80).
v_def("MT_typeA","Transmission",48).
v_def("MT_typeB","Transmission",55).

require_vp("Body").
require_vp("Destination").
require_vp("Drive_Type").
require_vp("Engine").
require_vp("Grade").
require_vp("Sun_Roof").
require_vp("Tire").
require_vp("Transmission").

% Require
require_v_v("Low","16_inch_Tire").
require_v_v("Upper","18_inch_Tire").
require_v_v("Middle","17_inch_Tire").
require_v_v("Upper","AT_typeA").

% Exclude

% Variability
%require_vp_v("Body","White_Body").

group(1).
group(2).
group(3).
:-not v("Low", 1).
:-not v("Middle", 2).
:-not v("Upper", 3).
