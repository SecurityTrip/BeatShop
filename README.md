# Инструкция по запуску Django-приложения с PostgreSQL и pgAdmin
## Требования:

* [Docker](https://www.docker.com/products/docker-desktop/ "Скачать")
* Docker Compose (встроен в Docker)
## Шаги по запуску:

* Запустите Docker Compose:
```
docker-compose up --build
```
* Для MacOS
```
sudo chown -R [user] ~/.docker
```
```
docker-compose up --build
```
Это запустит все сервисы, включая PostgreSQL, pgAdmin и Django-приложение. Флаг --build гарантирует пересборку Docker-образов перед запуском.

* Откройте pgAdmin в браузере:
Перейдите по адресу <http://localhost:5050> в браузере и войдите с учетными данными по умолчанию (заданными в docker-compose.yml).

## Если все плохо
```
docker system prune -a
```
Это удалит все данные Docker и отчистит кэш.