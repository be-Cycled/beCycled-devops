# Инструкция

## Установка `Ansible`

```bash
$ apt-get update
$ apt-add-repository ppa:ansible/ansible
$ apt-get update
$ apt-get install ansible
```

Копируем ключ на сервер, к которому будем подключаться:

```bash
$ ssh-copy-id root@SERVER_IP
```

Проверяем что подключение по `ssh` работает:

```bash
$ ansible -i inventory -m ping all
```

Запускаем `playbook` для настройки сервера:

```bash
$ ansible-playbook -i inventory prepare-new-server.playbook.yml
```