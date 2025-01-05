#!/bin/bash
car=$1

case $car in
Tesla)
echo -n "${car}'s factory in the USA."
;;
BMW | Mercedes | Audi | Porsche)
echo -n "${car}'s factory in Germany."
;;
Toyoda | Mazda | Mitsubishi | Subaru)
echo -n "${car}'s factory in Japan."
;;
AlfaRomeo)
echo -n "${car}'s factory in Italy"
;;
*)
echo -n "${car} is an unknown car brand."
;;
esac
