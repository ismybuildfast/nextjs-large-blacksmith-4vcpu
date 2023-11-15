#! /bin/sh

random_page_template_path=app/random-page-template/page.tsx
random_pages_dir=app/random-pages

rm -rf $random_pages_dir

# generate 100 random pages
for i in {1..100}
do
  random_page_dir="$random_pages_dir/$i"
  random_page_path="$random_page_dir/page.tsx"
  mkdir -p $random_page_dir
  sed -e "s/random_page_i/$i/" -e "s/random_value/$RANDOM/" $random_page_template_path > $random_page_path
done
