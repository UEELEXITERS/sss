#!/system/bin/sh

# Cek argumen
case "$1" in
  -apply)
    echo "[*] Mengatur ukuran dan densitas layar..."
    wm size 1000x2300
    wm density 444
    echo "[+] Berhasil apply konfigurasi custom!"
    ;;
  -reset)
    echo "[*] Mereset ukuran dan densitas layar ke default..."
    wm size reset
    wm density reset
    echo "[+] Reset berhasil!"
    ;;
  *)
    echo "Penggunaan: sh $0 -apply | -reset"
    echo "  -apply : Set ukuran layar ke 1000x2300 & density 444"
    echo "  -reset : Reset ukuran dan density layar ke default"
    ;;
esa
