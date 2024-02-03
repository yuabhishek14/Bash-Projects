# cut -d'.' -f1 cuts the filename using . as the delimiter and selects the first field, which is the filename without the extension

for x in 'ls . /images/';
do 

  a= 'echo $x | cut -d'.' -f1'
  mv ./images/$x ./images/$a".jpeg";
done
  