# Используем официальный образ nginx
FROM nginx

# Удаляем стандартные файлы nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем наш сайт
COPY ./index.html /usr/share/nginx/html

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
