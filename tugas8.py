print("Alfi Hidayatur R.")
print("21083010001 - Sistem Operasi A083")

from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

x = int(input("batas perulangan: "))
def tampil(i):
  if i % 2 == 0:
    print(f"{i+1} Ganjil", "- ID proses", getpid())
  elif i % 2 !=0:
    print(f"{i+1} Genap", "- ID proses", getpid())
  else:
    print("selesai")
  sleep(1)

print("\nsekuensial")

sekuensialAwal = time()

for i in range(x):
    tampil(i)

sekuensialAkhir = time()

print("\n process class")

kumpulanProses = []

processAwal = time()

for i in range(x):
    p = Process(target=tampil, args=(i,))
    kumpulanProses.append(p)
    p.start()

for i in kumpulanProses:
    p.join()

processAkhir = time()

print("\n pool class")

poolStart = time()

pool = Pool()
pool.map(tampil, range(x))
pool.close()

poolFinish = time()

print("\nsekuensial :", sekuensialAkhir - sekuensialAwal, "second")
print("process class:", processAkhir - processAwal, "second")
print("pool class :", poolFinish - poolStart, "second")
