#!/bin/bash

# Остановить текущий контейнер
docker-compose down

# Получить последние изменения из репозитория
git pull origin main

# Пересобрать и перезапустить контейнеры
docker-compose up -d

# Ждать некоторое время для завершения деплоя
sleep 10

# Ваш дополнительный код (например, миграции базы данных, запуск тестов и т.д.)
# ...

# Перезапустить Nginx (если необходимо)
docker restart nginx-container
