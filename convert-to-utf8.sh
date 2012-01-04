find /Users/blomma/Dropbox/Projects/work/Adlibris/sql -name \*.txt -type f | \
    (while read file; do
        iconv -f ISO-8859-1 -t UTF-8 "$file" > "${file%.xxx}-utf8.xxx";
		mv "${file%.xxx}-utf8.xxx" "$file"
    done);