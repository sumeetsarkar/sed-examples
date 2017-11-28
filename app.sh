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

new_title="Midnight Rain 2"
echo "\nUpdating title of book with id=$id"
sed "/<book id=\"$id\"/,/<\/book>/ {
  /<title>/ {
    s/<title>[^\"]*<\/title>/<title>$new_title<\/title>/
  }
}" $file > $output

echo "File output => $output"
