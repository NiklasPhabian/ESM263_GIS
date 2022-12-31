for filename in *pdf ; 
do
    echo "${filename}"    
    pdftoppm "$filename" "${filename}" -png
done
