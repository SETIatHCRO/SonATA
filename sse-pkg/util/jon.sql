echo "Galactic Center Survey Progress"
echo "19 grid points from galcenter"
mysql galcenter < galcenter.sql
echo "From galcenter2"
mysql galcenter < galcenter.sql
echo "Kepler Habital Zone Progress"
echo "From kepler6667mhz"
mysql kepler6667mhz < keplerHz.sql
echo "From kepler6867mhz"
mysql kepler6867mhz < keplerHz.sql
echo "From kepler8960mhz"
mysql kepler8960mhz < keplerHz.sql
echo "From kepler8ghz"
mysql kepler8ghz < keplerHz.sql
