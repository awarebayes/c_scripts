# What? 

Всякие скрипты для лаб по C. Contributions welcome.

Q: Почему?
A: Скрипты на питоне - кринж.

## Description

- ./make_tests.sh - создает n тестов в папке с задачей
- ./style_check.sh - проверяет все лабы на соответствие стилю
- ./run_test.sh - запускает ваши (локальные) тесты для одной задачи
- ./run_tests.sh - запускает ваши тесты для всех задач

p.s. исполняемый файл должен называться main.c

## Как использовать?

### 1. Из консоли

```
./make_tests.sh 4 4
```

### 2. VSCode

Написать task [ссылка](https://code.visualstudio.com/docs/editor/tasks)

Можно еще сделать [keybinding](https://code.visualstudio.com/docs/editor/tasks#_binding-keyboard-shortcuts-to-tasks)

### 3. Vim

Сделать map [ссылка](https://unix.stackexchange.com/questions/34066/vim-bind-a-key-to-a-bash-command)

## Details

#### ./make_tests.sh dirname n_pos n_neg

Аргументы -  кол-во позитивных и негативных тестов

```
./make_tests.sh lab_03_04_00 3 4
```

#### ./style_check

Проверяет все лабы на соответствие стилю.

**Должен стоять [CodeChecker]**(<https://git.iu7.bmstu.ru/IU7-Projects/CodeChecker>)

#### ./run_test dirname

Запускает тесты для задачи с папкой dirname.

Должны быть тесты (шок). Пустые тесты игнорируются. Букв быть не должно (приглашения ввода). Если они есть, то в out они тоже должны быть.

Пример вывода при ошибке, используется комманда diff (Слева target, справа что получилось):

```
_____________
pos_01 failed:
22 36 30 54                                                   | 896 896 0 0 
61 21 52 50                                                   | 0 0 0 0 
74 89 45 35                                                   | 1911598863 32764 -1151860969 32508 
89 79 60 25                                                   \ 3 1 22 78 
_____________
```

#### ./run_tests.sh

Запускает все тесты.
