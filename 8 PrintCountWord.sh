awk '{ for(i=1;i<=NF;i++) count[$i]++ } END { for(word in count) print word,count[word]}' file.txt
