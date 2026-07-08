#!/bin/bash

# Задаем список сайтов через пробел
SITES="google.com github.com yandex.ru non-existent-site.io"

echo "=== НАЧИНАЕМ ПРОВЕРКУ САЙТОВ ==="

for SITE in $SITES; do
    # Отправляем 1 пакет (-c 1) и ждем максимум 2 секунды (-W 2)
    if ping -c 1 -W 2 $SITE > /dev/null 2>&1; then
        echo "🟢 $SITE — Доступен"
    else
        echo "🔴 $SITE — НЕ ДОСТУПЕН!"
    fi
done

echo "================================"
