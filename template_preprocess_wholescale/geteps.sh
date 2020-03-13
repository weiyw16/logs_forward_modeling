#!/bin/bash
#vpconvert Fig/*.vpl color=y fat=2 serifs=y format=eps

#vpconvert Fig/*/*.vpl color=y fat=2 serifs=y ppi=300 format=png

vpconvert Fig/*.vpl color=y fat=2 serifs=y ppi=300 format=eps
#vpconvert Fig/seismo/*.vpl color=y fat=2 serifs=y ppi=300 format=png
#

#vpconvert Fig/snap*vz*/*.vpl color=y fat=2 serifs=y format=png
#convert -dispose previous -delay 80 -loop 0 Fig/snap*vz*/*.png seismo_vz.gif

#vpconvert Fig/spike/*.vpl bgcolor=light color=y fat=2 serifs=y format=png
#convert -transparent white -sigmoidal-contrast 1,0%  Fig/spike/*.png Fig/spike_transparent/*.png
#convert -dispose previous -delay 80 -loop 0 Fig/spike/*.png spike.gif


#vpconvert Fig/combine/*.vpl overlay=y color=y fat=2 serifs=y format=png
#convert -dispose previous -delay 80 -loop 0 Fig/combine/*.png combine.gif


#convert Fig/snap*vz*/*.png -transparent white -fuzz 20% Fig/snap_trans/*.png
#vpconvert Fig/snap_combine.vpl delay=80  bgcolor=l color=y fat=2 serifs=y format=gif
