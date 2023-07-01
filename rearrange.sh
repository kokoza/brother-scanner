# Rename even pages
cd ./Even/
rename 'our $i=2;s/^(\d+)/sprintf("%04d", $i*$1)/e' *.png

# Rename odd pages
cd ../Odd/
rename 'our $i=2;our $j=-1;s/^(\d+)/sprintf("%04d", $j+$i*$1)/e' *.png

cd ../
mkdir ./Combo/
cp Even/*.png Combo/
cp Odd/*.png Combo/