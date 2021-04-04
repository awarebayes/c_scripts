for dir in $(ls | grep lab_)
do
    echo "DIR: $dir:\n"
    bash ./scripts/run_test.sh $dir
done