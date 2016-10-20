mkdocs build
mkdocs2pandoc > beslistcart.pd
pandoc --toc -f markdown+grid_tables+table_captions -o beslistcart.pdf beslistcart.pd
