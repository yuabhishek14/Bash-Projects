

for x in 'ls . /images/';
do 

  a= 'echo $x | cut -d'.' -f1'
  mv ./images/$x ./images/$a".jpeg";
done
  