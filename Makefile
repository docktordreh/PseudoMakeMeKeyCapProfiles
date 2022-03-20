.POSIX:
.SUFFIXES: .stl .scad

.scad.stl:
	openscad --export-format binstl -o $@ $<

all: MX_DES_Standard_R4.stl MX_DES_Standard_R3.stl MX_DES_Standard_R2.stl MX_DES_Standard_R3_deepdish.stl MX_DES_Standard_R5.stl MX_DES_Standard_R1.stl MX_DES_Thumb_3.stl MX_DES_Thumb_4.stl MX_DES_Thumb_5.stl

MX_DES_Standard_R1.stl: MX_DES_Standard.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=5/' MX_DES_Standard.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Standard_R2.stl: MX_DES_Standard.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=2/' MX_DES_Standard.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Standard_R3.stl: MX_DES_Standard.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=1/' MX_DES_Standard.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Standard_R3_deepdish.stl: MX_DES_Standard.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=3/' MX_DES_Standard.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Standard_R4.stl: MX_DES_Standard.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=0/' MX_DES_Standard.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Standard_R5.stl: MX_DES_Standard.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=4/' MX_DES_Standard.scad | openscad -q --export-format binstl -o $@ /dev/stdin

MX_DES_Thumb_3.stl: MX_DES_Thumb.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=3/' MX_DES_Thumb.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Thumb_4.stl: MX_DES_Thumb.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=4/' MX_DES_Thumb.scad | openscad -q --export-format binstl -o $@ /dev/stdin
MX_DES_Thumb_5.stl: MX_DES_Thumb.scad
	sed -e '1,30s/keyID *= [0-9]*/keyID=5/' MX_DES_Thumb.scad | openscad -q --export-format binstl -o $@ /dev/stdin

