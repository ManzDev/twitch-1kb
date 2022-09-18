FILE=index.original.html
#FILE=$1

# Minifica el index.original.html
html-minifier-terser $FILE \
  --minify-js --minify-css --collapse-whitespace \
  > index.html

# Comprobar tamaños
SIZE=$(cat index.html | wc -c)
GZIPSIZE=$(cat index.html | gzip | wc -c)
BROTLISIZE=$(cat index.html | brotli | wc -c)

# Mostrar resultados
echo "Tamaño del fichero: $SIZE / $GZIPSIZE (gzip) / $BROTLISIZE (brotli)";
