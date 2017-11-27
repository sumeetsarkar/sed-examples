file="data/books.xml"
output="output/output.xml"

echo "Reading file => $file"

id="bk102"

# sed READ examples

echo "\nSearching for book with id=$id"
sed -n "/<book id=\"$id\"/,/<\/book>/p" $file

echo "\nSearching for book title with id=$id"
sed -n "/<book id=\"$id\"/,/<\/book>/ {
  /<title>/p
}" $file

echo "File output => $output"
