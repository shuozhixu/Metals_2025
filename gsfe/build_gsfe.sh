#!/usr/bin/bash

rm -f data.*

a=3.568

atomsk --create fcc $a Al orient [1-10] [11-2] [111] -duplicate 30 30 10 Al.cfg

atomsk Al.cfg -select random 12558 Al -sub Al Co AlCo.cfg

atomsk AlCo.cfg -select random 12558 Al -sub Al Cr AlCoCr.cfg

atomsk AlCoCr.cfg -select random 12558 Al -sub Al Fe AlCoCrFe.cfg

atomsk AlCoCrFe.cfg -select random 12558 Al -sub Al Ni data.AlCoCrFeNi_random_stacking.cfg lmp

mv data.AlCoCrFeNi_random_stacking.lmp data.AlCoCrFeNi_random_stacking

rm -f *.cfg
