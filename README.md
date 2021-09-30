# Выполнено ДЗ № "Знакомство с облачной инфраструктурой и облачными сервисами"

 - [x] Исследовать способ подключения к someinternalhost в одну
команду из вашего рабочего устройства, проверить работоспособность
найденного решения и внести его в README.md в вашем репозитории
 - [x] Предложить вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost и внести его в README.md в вашем репозитории

## В процессе сделано:
 - Способ подключения в одну команду:

 т.к. ОС Windows, то создаем службу:

 `` Get-Service -Name ssh-agent | Set-Service -StartupType Manual ``


 `` ssh -t -i ~/.ssh/id_ed25519 -A appuser@62.84.123.28 ssh appuser@10.129.0.26 ``

 - Доп. задание предложить вариант решения для подключения из консоли при помощи
команды вида ssh someinternalhost из локальной консоли рабочего
устройства:

Выполняем настройку .ssh/config

 `` Host bastion
   HostName 62.84.123.28
   User appuser
   IdentityFile ~/.ssh/id_ed25519
   ForwardAgent yes ``

`` Host someinternalhost
   HostName 10.129.0.26
   User appuser
   ProxyCommand ssh -W %h:%p bastion
   IdentityFile ~/.ssh/id_ed25519
   ForwardAgent yes ``

## Как запустить проект:
    bastion_IP = 62.84.123.28
    someinternalhost_IP = 10.129.0.26


## Как проверить работоспособность:
 - Первое задание - выполнить команду
 - Второе задание - выполнить команду

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания
