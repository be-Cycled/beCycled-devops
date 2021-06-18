# 🚴 beCycled DevOps 🛠

Документация и скрипты деплоя и обслуживания проекта.

## Деплой через Ansible

Инструкция по запуску находится в файле
[deploy-beCycled.playbook.md](/ansible/deploy-beCycled.playbook.md).

---

## Дополнительно

### Резервное копирование базы данных PostgreSQL

Выгрузка дампа в файл:

```bash
$ docker exec -t becycled-postgresql pg_dumpall -c -U postgres > dump.sql
```

Загрузка дампа в базу:

```bash
$ cat dump.sql | docker exec -i becycled-postgresql psql -U postgres
```
