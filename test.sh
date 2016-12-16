wget https://halfacanyon.com/sitemap.xml

cat sitemap.xml | sed -ne '/<image:loc>/s#\s*<[^>]*>\s*##gp' | sed -e 's/http/\nhttp/g' | sed -e 's/jpg/jpg\n/g' | grep jpg > images.list

mkdir img
cd img

wget -i ../images.list

