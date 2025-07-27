#!/usr/bin/env node

const { execSync } = require('child_process');

// Ambil argumen dari command line
const arg = process.argv[2];

switch (arg) {
  case '-apply':
    console.log('[*] Mengatur ukuran dan densitas layar...');
    try {
      execSync('wm size 1000x2300');
      execSync('wm density 444');
      console.log('[+] Berhasil apply konfigurasi custom!');
    } catch (e) {
      console.error('[-] Gagal mengatur wm:', e.message);
    }
    break;

  case '-reset':
    console.log('[*] Mereset ukuran dan densitas layar ke default...');
    try {
      execSync('wm size reset');
      execSync('wm density reset');
      console.log('[+] Reset berhasil!');
    } catch (e) {
      console.error('[-] Gagal mereset wm:', e.message);
    }
    break;

  default:
    console.log('Penggunaan: node script.js -apply | -reset');
    console.log('  -apply : Set ukuran layar ke 1000x2300 & density 444');
    console.log('  -reset : Reset ukuran dan density layar ke default');
    break;
}
