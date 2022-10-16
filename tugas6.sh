printf "input jumlah semester :"
read semester

declare -a NilaiIps

i=0
let banyak=$semester-1

while [ $i -le $banyak ];
do
  let angka=$i+1
  printf "nilai semester %.li = " $angka;
  read nilaisemester;
  NilaiIps[$i]=$nilaisemester;
  let jumlah=jumlah+$nilaisemester;
  let i=$i+1;
done

let ipk=$jumlah/$semester

echo "nilai ips mahasiswa tiap semester : ${NilaiIps[@]}"
echo "jumlah nilai ips / banyaknya nilai ips :" $jumlah "/" $semester
echo "ipk mahasiswa :" $ipk
