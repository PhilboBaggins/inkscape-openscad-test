$fn = 60;

height = 150;

module Shape()
{
    rotate_extrude(angle = 360)
    translate([0, -height, 0])
    import("drawing.svg");
}

module hollow(wall = 0.1)
{
    difference()
    {
        children();

        scale(v=[1.0 - wall, 1.0 - wall, 1.0]) 
        children();
    }
}

hollow()
{
Shape();
//cylinder(r=50, h=50);
//cylinder(r=75, h=25);
}
