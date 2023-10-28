---
## Front matter
title: "Шаблон отчёта по лабораторной работе no3"
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
# Цель работы

Целью данной лабораторной работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

    1. Установка необходимого ПО
    2. Заполнение отчета по выполнению лабораторной работы №3 с помощью языка разметки Markdown
    3. Задание для самостоятельной работы

# Теоретическое введение

Markdown - легковесный язык разметки, созданный с целью обозначения форматирования в простом тексте, с максимальным сохранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций. 

# Выполнение лабораторной работы

**3.1 Задание 1:**

Откройте терминал. Перейдите в каталог курса сформированный при выпол-
нении лабораторной работы №2. Обновите локальный репозиторий, скачав из-
менения из удаленного репозитория.

![Переход в каталог курса и обновление локального репозитория](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab03/report/image/Screenshot from 2023-10-28 17-24-47.png){#fig:001 width=1000}

С момента последнего обновления репозитория были выгружены файлы с от-
четами по двум лабораторным работам, что отражено в выводе, последовавшим
после выполнения git pull


**3.2 Задание 2:**

Перейдите в каталог с шаблоном отчета по лабораторной работе № 3. Проведи-
те компиляцию шаблона с использованием Makefile. При успешной компиляции
должны сгенерироваться файлы report.pdf и report.docx. Откройте и проверь-
те корректность полученных файлов.

![Переход в каталог лабораторной работы 3, компиляция шаблона](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab03/report/image/Screenshot from 2023-10-28 17-26-26.png){#fig:001 width=100%}

Шаблоны скомпилировались, что отражает вывод команды ls после коман-
ды компиляции make. В списке файлов рабочей директории отображаются
report.docx и report.pdf


**3.3 Задание 3:**

Удалите полученный файлы с использованием Makefile. Проверьте, что после
этой команды файлы report.pdf и report.docx были удалены.

![Удаление файлов](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab03/report/image/Screenshot from 2023-10-28 17-28-00.png){#fig:001 width=100%}

make clean удалила созданные файлы report.pdf и report.docx: при после-
дующей проверке с помощью команды ls они исчезли из списка файлов директо-
рии.


**3.4 Задание 4:**

Откройте файл report.md c помощью любого текстового редактора, например
gedit. Внимательно изучите структуру этого файла. Заполните отчет и скомпи-
лируйте отчет с использованием Makefile.

![Открытие файла шаблона и начало заполнения](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab03/report/image/Screenshot from 2023-10-28 20-55-21.png){#fig:001 width=100%}

Файл шаблона был открыт с помощью встроенного текстового редактора nano.
Результат заполнения скомпилирован в данный файл.


**3.5 Задание 5:**

Проверьте корректность полученных файлов. Обратите внимание, для кор-
ректного отображения скриншотов они должны быть размещены в каталоге
image.

![Проверка корректности компиляции в терминале](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab03/report/image/Screenshot from 2023-10-28 21-27-58.png){#fig:001 width=100%}

Файлы скомпилировались и отображаются при проверке содержимого ди-
ректории командой ls. Необходимо проверить корректность компиляции их
содержимого.

![Проверка корректности компиляции в самом файле](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab03/report/image/Screenshot from 2023-10-28 21-23-25.png){#fig:001 width=550}


# Выводы

При выполнении лабораторной работы была освоена процедура оформления
отчетов с помощью легковесного языка разметки Markdown, базовые элемен-
ты его разметки и процедура воскрешения погибшего после первой же сессии
lualatex.

