echo "Galactic Center Survey Progress"
echo "19 grid points"
echo "Frequency Range 6767-6967 MHz"
mysql galcenter < galcenter.sql
echo "Kepler Habital Zone Progress"
echo "54 Target Stars"
echo "Frequency Range 6767-6967 MHz"
mysql kepler6867mhz < keplerHz.sql
