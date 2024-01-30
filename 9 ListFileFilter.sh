ls -I '*.txt' -I '*.pdf' 

#if we want inside all sub directories then:

ls -I '*.txt' -I '*.pdf' -R

#Or

find -not -iname "*.pdf" -not -iname "*.txt"
