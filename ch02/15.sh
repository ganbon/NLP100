total=$(wc -l < popular-names.txt)
snum=5
lines_per_file=$(( (total + $snum - 1) / $snum ))  # 5分割、余りも含め調整

# awk -v lines=$lines_per_file '{
#     file = "part_" int((NR - 1) / lines) ".txt"
#     print > file
# }' popular-names.txt

split -n l/$snum popular-names.txt 