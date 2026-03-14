# /bin/bash

if [[ "$(basename "$PWD")" != "L.E.M.O.N." ]]; then
  echo "Run from root"
  exit 1
fi

iteration=1
# iterate all older docx versions
find ./backup/versions -name '*.docx' -type f | while IFS= read -r f; do
  iteration=$((iteration + 1))
  temp=./temp.docx
  cp $f $temp

  # fyi. docx is a zip with XLM.
  mkdir tmpdoc
  unzip -q $temp -d tmpdoc

  # rm pseudonym [semi-sad-face]
  sed -i '' 's/James Kirky/Jonatan Verstraete/g' tmpdoc/word/document.xml

  cd tmpdoc
  zip -qr ../LEMON.docx .
  cd ..

  rm -rf tmpdoc $temp

  pandoc LEMON.docx -t gfm -o LEMON.md

  echo "Push iteration $iteration"

  git add .
  git commit -m "Push iteration $iteration"
  git push origin main
  sleep 1


  # # Convert to markdown
  # md="${f%.docx}.md"
  # md=${md//versions/updated}
  # pandoc "$f" -t gfm -o "$md"


done


