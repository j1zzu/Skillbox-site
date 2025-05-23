# Используем легковесный образ Nginx на базе Alpine Linux
FROM nginx:alpine

# Копируем все файлы проекта в директорию Nginx для веб-содержимого
COPY . /usr/share/nginx/html

# Указываем, что контейнер будет использовать порт 80
EXPOSE 80

# Запускаем Nginx в foreground-режиме
CMD ["nginx", "-g", "daemon off;"]
