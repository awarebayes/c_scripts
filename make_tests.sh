cd $1
mkdir func_tests
cd func_tests

touch readme.md

for i in $(seq 1 $2)
do
    echo $i
    touch "pos_$(printf "%02d" "$i")_in.txt"
    touch "pos_$(printf "%02d" "$i")_out.txt"
done;

for i in $(seq 1 $3)
do
    echo $i
    touch "neg_$(printf "%02d" "$i")_in.txt"
    touch "neg_$(printf "%02d" "$i")_out.txt"
done;
