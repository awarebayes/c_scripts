cd ..
for dir in $(ls | grep lab_)
do
    cd $dir
    echo "$dir:\n"
    code_checker main.c
    cd ..
done