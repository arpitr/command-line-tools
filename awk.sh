#Print specific columns of a file. Columns are counted by space separated by default.
awk '{ print $3 "\t" $4}' marks.txt

#Print all lines of a file. $0 contains the current line in loop.
awk '{ print $0 }' marks.txt

#Print string match items
awk '/<string_to_match>/ { print $0}' marks.txt
  #Example match string 're'
  awk '/re/ { print $0}' marks.txt

#Print count of match items
awk '/<string_to_match>/{++cnt} END { print "COUNT = " cnt}' marks.txt
  #Example match string 're'
  awk '/re/{++cnt} END { print "COUNT = " cnt}' marks.txt

#Print count of match items(Using match Function)
awk '{if (match($0,"<string_to_match>")){++cnt}} END { print "COUNT = " cnt}' marks.txt
  #Example match string 're' via match()
  awk '{if( match($0, "re")){++cnt}} END { print "COUNT = " cnt}' marks.txt

#Print line with character count
awk 'length($0) > <number_to_match>' marks.txt
  #Example
  awk 'length($0) > 7' marks.txt

#Print number of fields in a row
awk '{print NF}' marks.txt

#Print lines with given count of fields
awk 'NF > <number_to_match { print $0}' marks.txt
  #Example get lines with fields greater than 3
  awk 'NF > 3{ print $0}' marks.txt

