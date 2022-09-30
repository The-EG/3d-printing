
/* [Mesh Settings] */
Test_Circle_Radius = 12.5;
Mesh_Points = 2; // [2:4 Corners,3:9 Point Mesh - 3x3 ,5:25 Point Mesh - 5x5, 7:49 Point Mesh - 7x7, 9:81 Point Mesh - 9x9]

/* [Printer Settings] */
Layer_Height = 0.3; 


Bed_Width = 230;
Bed_Length = 230;


X_Inset = 30;
Y_Inset = 30;



for (mx=[0:1:Mesh_Points-1]) {
  x = ((Bed_Width - (X_Inset * 2)) / (Mesh_Points - 1) * mx) + X_Inset;
  for (my=[0:1:Mesh_Points-1]) {
    y = ((Bed_Length - (Y_Inset * 2)) / (Mesh_Points - 1) * my) + Y_Inset;
    translate([x, y, 0]) {
      cylinder(h=Layer_Height, r=Test_Circle_Radius);
    }
  }
} 


$fa = 1;
$fs = 0.4;