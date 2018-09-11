#!/bin/bash
# ================================================================================
# ================================== Lectures ====================================
# ================================================================================

cd ./lectures/Notebooks
notebooks=(*.ipynb)

echo 'remove old'
rm -rf ../slides/*.html
rm -rf ../html/*.html
rm -rf ../markdown/*.md
rm -rf ../pdf/*.pdf
echo 'success'
# ============ Converting =================


for notebook in "${notebooks[@]}"; do
   # Split filename from extension
   filename=$(basename "$notebook")
   extension="${filename##*.}"
   filename="${filename%.*}"

   # Slides
   jupyter-nbconvert --to slides "$filename".ipynb --reveal-prefix=reveal.js
   mv "$filename".slides.html  ../slides/"$filename".html
   

   # HTML   
   jupyter-nbconvert --to html "$filename".ipynb
   mv "$filename".html  ../html/"$filename".html

   # Markdown
   jupyter-nbconvert --to markdown "$filename".ipynb
   mv "$filename".md  ../markdown/"$filename".md

   # Pdf It works, if there is no gifs
   #jupyter-nbconvert --to pdf "$filename".ipynb
   #mv "$filename".pdf  ../pdf/"$filename".pdf
   done

cd ..

# =========== Modifying html ==============

echo 'Modifying html'
touch ./lectures.html.new
python ../files/generate_html.py lectures
rm -rf ./lectures.html
mv ./lectures.html.new ./lectures.html
echo 'success'

cd ..
# ================================================================================
# ================================== Homeworks ===================================
# ================================================================================

cd ./homeworks/Notebooks
notebooks=(*.ipynb)

echo 'remove old'
rm -rf ../slides/*.html
rm -rf ../html/*.html
rm -rf ../markdown/*.md
rm -rf ../pdf/*.pdf
echo 'success'

# ============ Converting =================

for notebook in "${notebooks[@]}"; do
   # Split filename from extension
   filename=$(basename "$notebook")
   extension="${filename##*.}"
   filename="${filename%.*}"

   # Slides
   jupyter-nbconvert --to slides "$filename".ipynb --reveal-prefix=reveal.js
   mv "$filename".slides.html  ../slides/"$filename".html

   # HTML
   jupyter-nbconvert --to html "$filename".ipynb
   mv "$filename".html  ../html/"$filename".html

   # Markdown
   jupyter-nbconvert --to markdown "$filename".ipynb
   mv "$filename".md  ../markdown/"$filename".md

   # Pdf It works, if there is no gifs
   #jupyter-nbconvert --to pdf "$filename".ipynb
   #mv "$filename".pdf  ../pdf/"$filename".pdf
   done

cd ..

# =========== Modifying html ==============

echo 'Modifying html'
touch ./homeworks.html.new
python ../files/generate_html.py homeworks
rm -rf ./homeworks.html
mv ./homeworks.html.new ./homeworks.html
echo 'success'

cd ..
# # ================================================================================
# # ================================== Projects ====================================
# # ================================================================================

# cd ./projects/Notebooks
# notebooks=(*.ipynb)

# # ============ Converting =================

# for notebook in "${notebooks[@]}"; do
#    # Split filename from extension
#    filename=$(basename "$notebook")
#    extension="${filename##*.}"
#    filename="${filename%.*}"

#    # Slides
#    jupyter-nbconvert --to slides "$filename".ipynb --reveal-prefix=reveal.js
#    mv "$filename".slides.html  ../slides/"$filename".html

#    # HTML
#    jupyter-nbconvert --to html "$filename".ipynb
#    mv "$filename".html  ../html/"$filename".html

#    # Markdown
#    jupyter-nbconvert --to markdown "$filename".ipynb
#    mv "$filename".md  ../markdown/"$filename".md

#    # Pdf It works, if there is no gifs
#    #jupyter-nbconvert --to pdf "$filename".ipynb
#    #mv "$filename".pdf  ../pdf/"$filename".pdf
#    done

# cd ..
# cd ..

# # =========== Modifying html ==============