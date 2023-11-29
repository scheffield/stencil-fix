difference() {
    cube([119.5,119.5, 5.0],false);
    $fn=100;
    translate([59.75,59.75,3.340])
    linear_extrude(height = 3, center = false, convexity = 0,twist=0)
    import("pcb_holder.dxf");
    for(i=[2.750:6.0:122.75]){
        for(j=[2.750:6.0:122.75]){
            $fn=250;
            translate([i,j,0])
            cylinder(h=11.0, d=3.5, center=true);
        }
    }
}
