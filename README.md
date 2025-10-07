# Pseudo Make Me Key Cap Profile

This fork of [Pseudo Make Me Key](https://github.com/pseudoku/PseudoMakeMeKeyCapProfiles) adds a homebar to the 'MX_DES_Standard.scad' file, building on [uqs' fork](https://github.com/uqs/PseudoMakeMeKeyCapProfiles) of the original repository, further building on [candrews' fork](https://github.com/candrews/PseudoMakeMeKeyCapProfiles).

Uqs' fork introduced that the models sit flush on the XY plane, making it easier to 3D print them without additional supports. The fork also introduced bridges keeping the MX stem in place on the bed. Additionally, it provided a Makefile for easier rendering and exporting of the models.

Candrews' fork introduced printing keys without stems and stems only to facilitate printing the keycap itself, without the stem, in a rotated orientation for better surface quality, while still being able to print the stem separately.

    if(homeBar == true) {
    homey = -4.5;
    homez = KeyHeight(keyID)-DishHeightDif(keyID) + 0.2;
    l = 5.5;
    r = 0.5;

    translate([0, homey, homez])
    rotate([0,90,0])
    translate([0, 0, -l / 2])
    union () {
        cylinder(h = l, r = r, $fn = 32);
    };
  };
  
This fork adds a homebar to the 'MX_DES_Standard.scad' file. The homebar is implemented as a small cylindrical protrusion on the front of the keycap, positioned to be easily felt by touch typists.

## How to

Requirements:
- [OpenSCAD](https://www.openscad.org/downloads.html)
- [Make](https://www.gnu.org/software/make/)

Run `make` in the directory containing the `.scad` files to generate the STL files.


## Distorted Ellipsoidal Saddle (DES)
High sculpt smooth transition profile
![DES](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/R1-R5.png)
### Standard
![Neuron v1](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/DES_cast.jpg)

### Concave
![Corne thumb and Convex Caps](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/Convex.jpg)

### Thumbs
![IMK Corne v1](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/DES_corne.jpg)
![Kyria](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/DES_kyria.png)

### Chicago Stenographer
Subtly sculpted choc spaced low profile
![CS](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/CS.png)
#### Standard
![Look](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/CS_gergo.jpg)

#### Convex
![Georgi](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/CS_convex.jpg)
#### Thumbs
![1.5 + 1](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/CS_Thumb.png)
Additional sculpt angle and smoother transitions

### Philadelphia Minimalist
![under](https://raw.githubusercontent.com/pseudoku/PseudoMakeMeKeyCapProfiles/master/Photo/Philadelphia_Minimalist.png)
Minimal spacing
Under construction
