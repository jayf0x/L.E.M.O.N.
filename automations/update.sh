# /bin/bash

if [[ "$(basename "$PWD")" != "L.E.M.O.N." ]]; then
  echo "Run from root"
  exit 1
fi


if git diff --quiet LEMON.docx; then
    echo "No DOCX changes"
    exit 0
fi


pandoc LEMON.docx -t gfm -o LEMON.md

msg="${1:-"Update version"}"

git add .
git commit -m "$msg"
git push origin main







: """
### Old logic for version updating



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

  # md="${f%.docx}.md"
  # pandoc "$f" -t gfm -o "$md"
done
"""