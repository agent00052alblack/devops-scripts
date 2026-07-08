#!/bin/bash

# Проверяем статус nginx (ищем слово "active (running)")
if systemctl is-active --quiet nginx; then
    echo "Веб-сервер Nginx работает стабильно."
else
    echo "ВНИМАНИЕ: Nginx остановлен! Попытка перезапуска..."
    sudo systemctl start nginx
fi
