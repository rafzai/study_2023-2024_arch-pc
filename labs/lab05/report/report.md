---
## Front matter
title: "Шаблон отчёта по лабораторной работе no 5"
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

1 Цель работы 4
2 Выполнение лабораторной работы 5
2.1 Задание 1: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5
2.2 Задание 2: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 6
2.3 Задание 3: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 6
2.4 Задание 4: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
2.5 Задание 5: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
2.6 Задание 6: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
2.7 Задание 7: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11
2.8 Задание 8: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12
2.9 Задание 9: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14
3 Задание для самостоятельной работы 16
3.1 Задание 10: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16
3.2 Задание 11: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18
4 Вывод 20

# Цель работы

Приобретение практических навыков работы в Midnight Commander. Освоение
инструкций языка ассемблера mov и int.

# Выполнение лабораторной работы

**2.1 Задание 1.**

Откройте Midnight Commander. Пользуясь клавишами � , � и Enter перейдите
в каталог ~/work/arch-pc. Пользуясь строкой ввода и командой touch создайте
файл lab5-1.asm.

![Переход в каталог курса и введение команды на создание файла](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.1.png){#fig:001 width=1000}

Midnight Commander не был предустановлен на используемом мною дистри-
бутиве, но после установки работал исправно. В столбце справа можно видеть
содержание директории lab05/report, в столбце слева - домашней директории.
В строчке снизу введена команда для создания файла.

**2.2 Задание 2.**

С помощью функциональной клавиши F4 откройте файл lab5-1.asm для ре-
дактирования во встроенном редакторе.

![Выбор текстового редактора для дальнейшей работы с файлом](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.2.png){#fig:001 width=100%

Из предложенных на выбор редакторов я выбрала nano, для чего ввела в строку
цифру 1.

**2.3 Задание 3.**

Введите текст программы из листинга 5.1 (можно без комментариев), сохрани-
те изменения и закройте файл.

![Введение текста программы из листинга](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.3.png){#fig:001 width=100%}


Текст программы скопирован, комментарии удалены. Изменения сохранены.
Работает.

**2.4 Задание 4.**

С помощью функциональной клавиши F3 откройте файл lab5-1.asm для про-
смотра. Убедитесь, что файл содержит текст программы.

![ Тот же самый текст, но теперь открытый в Midnight Commander](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.4.png){#fig:001 width=100%}


Символ-в-символ тот же самый текст, что был введен и до этого. Сохранение
успешно.

**2.5 Задание 5.**

Оттранслируйте текст программы lab5-1.asm в объектный файл. Выполните
компоновку объектного файла и запустите получившийся исполняемый файл.
Программа выводит строку 'Введите строку:' и ожидает ввода с клавиатуры.
На запрос введите Ваши ФИО.

![Превращение текста программы в объектный код](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.5.png){#fig:001 width=550}

![Создание нового объектного файла и файла листинга программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.6.png){#fig:001 width=550}

![Выполнение программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.7.png){#fig:001 width=550}


Программа скомпилировалась и выполнилась успешно: попросила меня ввести
строку и закрылась сразу же после ввода.

**2.6 Задание 6.**

В одной из панелей mc откройте каталог с файлом lab5-1.asm. В другой панели
каталог со скаченным файлом in_out.asm (для перемещения между панелями
используйте Tab). Скопируйте файл in_out.asm в каталог с файлом lab5-1.asm с
помощью функциональной клавиши F5.

![Копирование файла](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.8.png){#fig:001 width=550}

![Файл скопирован](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.9.png){#fig:001 width=550}


Файл, лежавший до этого на рабочем столе, исчез оттуда после копирования и
появился в директории лабораторной работы: копирование выполнено успешно.

**2.7 Задание 7.**

С помощью функциональной клавиши F6 создайте копию файла lab5-1.asm с
именем lab5-2.asm. Выделите файл lab5-1.asm, нажмите клавишу F6, введите
имя файла lab5-2.asm и нажмите клавишу Enter

![Создание копии файла](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.10.png){#fig:001 width=550}

**2.8 Задание 8.**

Исправьте текст программы в файле lab5-2.asm с использование подпрограмм
из внешнего файла in_out.asm (используйте подпрограммы sprintLF, sread и
quit) в соответствии с листингом 5.2. Создайте исполняемый файл и проверьте
его работу

![Исправленный код программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.11.png){#fig:001 width=550}


В начало файла указана команда на подключение внешнего файла in_out.asm,
в котором описаны подпрограммы sprintLF, sread и quit. Они вызываются
далее в тексте программы, заменяя часть команд mov.

![Компиляция программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.12.png){#fig:001 width=550}


Программа скомпилировалась успешно и снова попросила меня ввести строку,после чего завершилась.

**2.9 Задание 9.**

В файле lab5-2.asm замените подпрограмму sprintLF на sprint. Создайте
исполняемый файл и проверьте его работу. В чем разница?

![Исправленный код программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.13.png){#fig:001 width=550}

![Компиляция обновленной программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/2.14.png){#fig:001 width=550}


Программа скомпилировалась без значительных изменений, но замена
sprintLF на sprint привела к тому, что исчез символ переноса строки при
выводе сообщения на экран.

# Задание для самостоятельной работы


**3.1 Задание 1.**

Создайте копию файла lab5-1.asm. Внесите изменения в программу (без ис-
пользования внешнего файла in_out.asm), так чтобы она работала по следующе-
му алгоритму: * вывести приглашение типа “Введите строку:”; * ввести строку с
клавиатуры; * вывести введённую строку на экран. Получите исполняемый файл
и проверьте его работу. На приглашение ввести строку введите свою фамилию.

![Исправленный код программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/3.1.png){#fig:001 width=550}

![Компиляция обновленной программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/3.2.jpg){#fig:001 width=550}


Для того, чтобы после введения строки полученный ввод был показан еще раз,
скопируем блок вывода текста за одним исправлением: вместо переменной msg теперь нужно вывести полученный ввод (он сохраняется в переменную buf1).
при компиляции программы можно видеть, что это работает именно так, как и
было задумано.
 
**3.2 Задание 2.**

Создайте копию файла lab5-2.asm. Исправьте текст программы с использо-
вание подпрограмм из внешнего файла in_out.asm, так чтобы она работала по
следующему алгоритму: * вывести приглашение типа “Введите строку:”; * ввести
строку с клавиатуры; * вывести введённую строку на экран. Получите исполняе-
мый файл и проверьте его работу. На приглашение ввести строку введите свою
фамилию.

![Исправленный код программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/3.3.png){#fig:001 width=550}

![Компиляция обновленной программы](/home/rafzaai/work/study/2023-2024/Computer architecture/arch-pc/labs/lab05/report/image/3.4.jpg){#fig:001 width=550}

Для того, чтобы после введения строки полученный ввод был показан еще раз,
в этот раз просто еще один раз вызовем команду sprintLF. При компиляции
программы можно видеть, что это работает именно так, как и было задумано.


# Выводы

При выполнении лабораторной работы были приобретены практические на-
выки работы в Midnight Commander и освоены инструкции языка ассемблера mov
и int.
