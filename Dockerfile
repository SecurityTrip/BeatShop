# Use an official Python runtime as a parent image
FROM python:3.12.2

# Устанавливаем переменную окружения для вывода сообщений логов
ENV PYTHONUNBUFFERED 1

# Создаем и устанавливаем рабочую директорию внутри контейнера
WORKDIR /code

# Копируем файлы зависимостей и устанавливаем их
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем файлы приложения в контейнер
COPY . /code/

# Экспортируем порт, который будет использоваться Django
EXPOSE 8000
