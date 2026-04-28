#!/bin/bash
echo "🏠 Make Room Oyunu başlatılıyor..."
echo "Tarayıcıda aç: http://localhost:3000"
echo "Durdurmak için: Ctrl+C"
cd "$(dirname "$0")"
if command -v python3 &>/dev/null; then
  python3 -m http.server 3000
elif command -v npx &>/dev/null; then
  npx serve . -p 3000
else
  echo "Python3 veya Node.js bulunamadı!"
fi
