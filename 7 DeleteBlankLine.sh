#Method 1
# '^$' which represents blank lines
# ^ denotes start of line and $ denotes end of line

grep -v '^$' inputfile > outputfile or grep -v '^$' file.txt

#Method 2
# d stands for delete ,  / denotes the start of a pattern or regular expression.
sed '/^$/d' input_file > output_file or sed '/^$/d' file.txt

#Method 3
# NF evaluates to true for lines that have a non-zero number of fields.
awk 'NF' input_file > output_file 