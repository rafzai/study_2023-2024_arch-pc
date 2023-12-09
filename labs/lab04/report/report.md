---
## Front matter
title: "Шаблон отчёта по лабораторной работе no 4"
subtitle: "Дисциплина: компьютерa архитектур"
author: "Дзаки Рафли Зайдан"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---


#Список иллюстраций

2.1 Переход в каталог лабораторной работы и создание файла . . . . 6

2.2 Копирование кода в файл . . . . . . . . . . . . . . . . . . . . . . 7

2.3 Превращение текста программы в объектный код . . . . . . . . . 8

2.4 Создание нового объектного файла и файла листинга программы 8

2.5 Передача объектного файла компоновщику . . . . . . . . . . . . 9

2.6 Передача объектного файла компоновщику . . . . . . . . . . . . 9

2.7 Запуск исполняемого файла Hello . . . . . . . . . . . . . . . . . . 10

3.1 Создание копии файла . . . . . . . . . . . . . . . . . . . . . . . . 11

3.2 Измененный код программы . . . . . . . . . . . . . . . . . . . . 12

3.3 Трансляция, сборка и запуск lab04 . . . . . . . . . . . . . . . . . 13

# Цель работы

Освоение процедуры компиляции и сборки программ, написанных на ассем-
блере NASM.

# Выполнение лабораторной работы

**2.1 Задание 1.**

Создайте текстовый файл с именем hello.asm. Откройте этот файл с помощью
любого текстового редактора, например, gedit.

![Переход в каталог лабораторной работы и создание файла](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.1.png){#fig:001 width=1000}


Для создания и редактирования файла использовался текстовый редактор nano.
При открытии файла с заданным именем он создается автоматически, если до
этого отсутствует в каталоге, в чем можно убедиться проверкой содержимого
посредством введения команды ls

**2.2 Задание 2.**

Введите код программы в документ.

![Переход в каталог лабораторной работы 3, компиляция шаблона](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.2.png){#fig:001 width=100%}


Комментарии - текст, отделенный от строки кода знаком ; - не выполняются
при компиляции программы, поэтому были вырезаны.

**2.3 Задание 3.**

NASM превращает текст программы в объектный код. Например, для компиля-
ции приведённого выше текста программы «Hello World» необходимо написать:
nasm -f elf hello.asm

![Открытие файла шаблона и начало заполнения](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.3.png){#fig:001 width=100%}


Сообщения об ошибке не последовало и при проверке содержимого командой
ls можно видеть, что объектный файл (hello.o) создан

**2.4 Задание 4.**

Выполните следующую команду: nasm -o obj.o -f elf -g -l list.lst
hello.asm

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.4.png){#fig:001 width=100%}


При проверке содержимого каталога можно видеть, что в нем появились новые
файлы, созданные на основе hello.asm: объектный файл obj.o, указание на созда-
ние которого передается первой частью команды; и файл листинга программы
list.lst, указание к созданию которого передается второй частью команды.

**2.5 Задание 5.**

Для того, чтобы получить исполняемый файл, объектный файл необходимо
передать на обработку компоновщику: ld -m elf_i386 hello.o -o hello

![Проверка корректности компиляции в самом файле](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.5.png){#fig:001 width=550}


При очередной проверке содержимого каталога можно видеть, что появился
файл hello, подсвеченный зеленым цветом. Это указывает на то, что данный
файл - исполняемый.

**2.6 Задание 6.**

Выполните следующую команду: ld -m elf_i386 obj.o -o main

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.6.png){#fig:001 width=550}


При проверке содержимого каталога можно видеть, что исполняемый появился
файл main, собранный на основе файла obj.o по указанию написанной выше
команды.

**2.7 Задание 7.**

Запустить на выполнение созданный исполняемый файл, находящийся в теку-
щем каталоге, можно, набрав в командной строке: ./hello

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/2.7.png){#fig:001 width=550}


Исполняемый файл запустился без ошибок и выдал именно то, что и должен
был выдать: “привет, мир”.




# Задание для самостоятельной работы


**3.1 Задание 1.**

С помощью команды cp создайте копию файла hello.asm с именем lab4.asm.

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/3.1.png){#fig:001 width=550}


При проверке содержимого каталога появился файл lab04.asm: команда вы-
полнена успешно.

**3.2 Задание 2.**

С помощью любого текстового редактора внесите изменения в текст програм-
 мы в файле lab4.asm так, чтобы вместо “Hello world!” на экран выводилась строка
с вашими фамилией и именем.

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/3.2.png){#fig:001 width=550}


Изменить нужно совсем немного: заменить текст Hello world на мое имя и,
красоты ради, переименовать метки из hello и helloLen в name и nameLen соот-
ветственно.

**3.3 Задание 3.**

Оттранслируйте полученный текст программы lab4.asm в объектный файл. Вы-
полните компоновку объектного файла и запустите получившийся исполняемый
файл.

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab04/report/image/3.3.png){#fig:001 width=550}


По уже известному алгоритму создаем объектный файл, передаем его ком-
поновщику для получения исполняемого файла и запускаем. По итогу работы
выведена строчка с именем, что и требовалось получить.



**3.4 Задание 4.**

Скопируйте файлы hello.asm и lab4.asm в Ваш локальный репозиторий в ката-
лог ~/work/study/2023-2024/“Архитектура компьютера”/arch-pc/labs/lab04/. Загру-
зите файлы на Github.
Работа изначально проводилась в каталоге ../labs/lab04, повторное копирова-
ние излишне. Файлы были загружены в репозиторий через терминал.

# Выводы

Были освоены базовые элементы языка ассемблера NASM, а также порядок
трансляции, сборки и запуска программ.
