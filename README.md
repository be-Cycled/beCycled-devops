# 🚴 beCycled DevOps 🛠

Документация и скрипты деплоя и обслуживания проекта.

![beCycled Deploy Status](https://img.shields.io/github/workflow/status/be-Cycled/beCycled-devops/Deploy?label=deploy)

## Деплой через Ansible

Инструкция по запуску находится в файле
[deploy-beCycled.playbook.md](/ansible/deploy-beCycled.playbook.md).

---

## Дополнительно

### Резервное копирование базы данных PostgreSQL

Выгрузка дампа в файл:

```bash
$ docker exec -t becycled-postgresql pg_dumpall -c -U becycled > dump.sql
```

Загрузка дампа в базу:

```bash
$ cat dump.sql | docker exec -i becycled-postgresql psql -U becycled
```
