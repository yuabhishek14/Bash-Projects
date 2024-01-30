
# printf("%s ", $i): This prints each word followed by a space.
echo "My Name is Abhishek I will be millionare for sure" | awk '{ for(i=NF;i>0;i--) printf("%s ",$i) }'