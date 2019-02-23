# SVG2SCAD

svg2scad (0.005) is a perl script and requires some additional modules, which you can install 
like this:
```
% cpan XML::Simple Math::Bezier Data::Dumper
```

that's all.   

## Install Script

```
% cp svg2scad /usr/bin/
```
or
```
% sudo make install
```
   
## How to use

1) Draw a path in Inkscape, save it as file.svg

2) Run svg2scad

```
% svg2scad file.svg
```

creates a file.scad

3) OpenSCAD you can include that file:

```
linear_extrude(height=10) include <file.scad>
```

and hit F5 to display the polygon, or make a nice extrusion:

```
% svg2scad -openrot sample4.svg
```

the -openrot switch ensures open polygon prepared for rotational extrusion:
first and last coordinate x-position to be the same, making a closed volume;
OpenSCAD otherwise cannot compile and create a STL file.   
   
```
rotate_extrude ($fn=100) include <sample4.scad>
```

4) higher bezier curve subdivision (default = 32)

```
% svg2scad -bzsteps 64 myvase.svg
```
   
   
that's it!
   
