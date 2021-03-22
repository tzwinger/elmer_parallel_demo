L=5.0;
H=1.0;
res1 = 0.2;
res2 = 0.02;
vlay=10;
Point(1) = {0.0, 0.0, 0, res2};
Point(2) = {L, 0.0, 0, res1};
Point(3) = {L, H, 0, res1};
Point(4) = {0.0, H, 0, res2};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
// E
Point(5) = {0.4, 0.8, 0, res2};
Point(6) = {0.4, 0.3, 0, res2};
Point(7) = {0.7, 0.3, 0, res2};
Point(8) = {0.7, 0.4, 0, res2};
Point(9) = {0.5, 0.4, 0, res2};
Point(10) = {0.5, 0.5, 0, res2};
Point(11) = {0.6, 0.5, 0, res2};
Point(12) = {0.6, 0.6, 0, res2};
Point(13) = {0.5, 0.6, 0, res2};
Point(14) = {0.5, 0.7, 0, res2};
Point(15) = {0.7, 0.7, 0, res2};
Point(16) = {0.7, 0.8, 0, res2};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 9};
Line(9) = {9, 10};
Line(10) = {10, 11};
Line(11) = {11, 12};
Line(12) = {12, 13};
Line(13) = {13, 14};
Line(14) = {14, 15};
Line(15) = {15, 16};
Line(16) = {16, 5};

// L
Point(17) = {0.9, 0.8, 0, res2};
Point(18) = {0.9, 0.3, 0, res2};
Point(19) = {1.2, 0.3, 0, res2};
Point(20) = {1.2, 0.4, 0, res2};
Point(21) = {1, 0.4, 0, res2};
Point(22) = {1, 0.8, 0, res2};
Line(17) = {17, 18};
Line(18) = {18, 19};
Line(19) = {19, 20};
Line(20) = {20, 21};
Line(21) = {21, 22};
Line(22) = {22, 17};
Point(23) = {1.4, 0.8, 0, res2};
Point(24) = {1.4, 0.3, 0, res2};
Point(25) = {1.5, 0.3, 0, res2};
Point(26) = {1.5, 0.7, 0, res2};
Point(27) = {1.6, 0.6, 0, res2};
Point(28) = {1.7, 0.7, 0, res2};
Point(29) = {1.8, 0.8, 0, res2};
Point(30) = {1.8, 0.3, 0, res2};
Point(31) = {1.7, 0.3, 0, res2};
Point(32) = {1.7, 0.6, 0, res2};
Point(33) = {1.6, 0.5, 0, res2};
Point(34) = {1.5, 0.6, 0, res2};
Line(23) = {23, 26};
Line(24) = {26, 27};
Line(25) = {27, 28};
Line(26) = {28, 29};
Line(27) = {29, 30};
Line(28) = {30, 31};
Line(29) = {31, 32};
Line(30) = {32, 33};
Line(31) = {33, 34};
Line(32) = {34, 25};
Line(33) = {25, 24};
Line(34) = {24, 23};

//E duplicated
Translate {1.6, 0, 0} {
  Duplicata { Line{5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}; }
}

// R
Point(77) = {2.5, 0.8, 0, res2};
Point(78) = {2.5, 0.3, 0, res2};
Point(79) = {2.6, 0.3, 0, res2};
Point(80) = {2.6, 0.5, 0, res2};
Point(81) = {2.7, 0.3, 0, res2};
Point(82) = {2.775, 0.3, 0, res2};
Point(83) = {2.65, 0.5, 0, res2};
Point(84) = {2.65, 0.8, 0, res2};
Line(47) = {77, 78};
Line(48) = {78, 79};
Line(49) = {79, 80};
Line(50) = {80, 81};
Line(51) = {81, 82};
Line(52) = {82, 83};
Line(53) = {77, 84};
Point(85) = {2.65, 0.65, 0, res2};
Circle(54) = {83, 85, 84};
Point(86) = {2.6, 0.7, 0, res2};
Point(87) = {2.6, 0.6, 0, res2};
Line(55) = {86, 87};
Point(88) = {2.6, 0.65, 0, res2};
Circle(56) = {87, 88, 86};





//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Curve Loop(2) = {6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 5};
//+
Curve Loop(3) = {18, 19, 20, 21, 22, 17};
//+
Curve Loop(4) = {33, 34, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32};
//+
Curve Loop(5) = {36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 35};
//+
Curve Loop(6) = {48, 49, 50, 51, 52, 54, -53, 47};
//+
Plane Surface(1) = {1, 2, 3, 4, 5, 6};
//+
Extrude {0, 0, 1} {
  Surface{1}; Layers{10}; Recombine;
}
//+
Physical Volume(1) = {1};
//+
Physical Surface(2) = {115};
//+
Physical Surface(3) = {123};
//+
Physical Surface(4) = {119};
//+
Physical Surface(5) = {127};
//+
Physical Surface(6) = {328};
//+
Physical Surface(7) = {1};
// E
Physical Surface(8) = {131, 135, 139, 147, 143, 151, 163, 155, 159, 167, 175, 171};
// L
Physical Surface(9) = {199, 183, 179, 187, 195, 191};
// M
Physical Surface(10) = {243, 239, 247, 227, 231, 211, 207, 235, 215, 203, 219, 223};
// E
Physical Surface(11) = {251, 295, 291, 287, 283, 279, 275, 271, 267, 263, 259, 255};
// R
Physical Surface(12) = {327, 323, 315, 311, 319, 299, 303, 307};