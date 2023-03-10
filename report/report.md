---
## Front matter
title: "Лабораторная работа № 5"
subtitle: "Модель хищник-жертва"
author: "Покрас Илья Михайлович"

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
lot: false
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

# Цели работы

Целью данной лабораторной работы является построение математической модели хищник-жертва.

# Задания
Для модели «хищник-жертва»   (@fig:001):

![Система ОДУ](./images/eq.png){#fig:001}

1. Построить график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях: $x_{0} = 9, y_{0} = 29$. 
2. Найти стационарное состояние системы.

# Теоретическое введение:
Простейшая модель взаимодействия двух видов типа «хищник —  жертва» - модель  Лотки-Вольтерры.  Данная  двувидовая  модель  основывается  на следующих предположениях:

1. Численность популяции жертв x и хищников y зависят только от времени (модель  не  учитывает  пространственное  распределение  популяции  на занимаемой территории).

2. В отсутствии взаимодействия численность видов изменяется  по модели  Мальтуса, при этом число жертв увеличивается, а число хищников падает.

3.  Естественная  смертность  жертвы  и  естественная  рождаемость  хищника считаются несущественными. 

4.  Эффект насыщения численности обеих популяций не учитывается.

5.  Скорость  роста  численности  жертв  уменьшается  пропорционально численности хищников (@fig:002).

![Система ОДУ по условию](./images/eq2.png){#fig:002}

В  этой  модели  x – число  жертв,  y - число  хищников.  Коэффициент a описывает скорость естественного прироста числа жертв в отсутстви хищников, с -  естественное вымирание хищников, лишенных пищи в виде жертв. Вероятность взаимодействия  жертвы  и  хищника  считается пропорциональной  как  количеству жертв, так и числу самих хищников (xy). Каждый акт взаимодействия уменьшает популяцию жертв, но способствует увеличению популяции хищников (члены -bxy  и dxy в правой части уравнения). 

# Выполнение лабораторной работы

## Код на Julia:

Инициализируем библиотеки для дальнейшей дальнейшей работы. Далее
создадим переменные для начальных X и Y и опишем a, b, c, d (@fig:003).

![Переменные и библиотеки](./images/jlcode-init.png){#fig:003}

Создаим с помощью Differential Equations системы (@fig:004).

![ОДУ](./images/jlcode-ode.png){#fig:004}

С помощью solve получим решения ОДУ(@fig:005).

![ОДУ](./images/jlcode-solve.png){#fig:005}

Сохраним данные решений в отдельные вектора(@fig:006).

![Копирование данных через for](./images/jlcode-copy.png){#fig:006}

Визуализируем решение с помощью Plots(@fig:007).

![Визуализация](./images/jlcode-plots.png){#fig:007}

Результат(Julia) (@fig:008 - @fig:010)

![График зависимости численности хищников от численности жертв](./images/jlmodel1.png){#fig:008}

![График зависимости численности хищников и численности жертв от времени](./images/jlmodel2.png){#fig:009}

![График зависимости численности хищников и численности жертв от времени в стационарной системе](./images/jlmodel3.png){#fig:010}

## Код на OpenModelica

начала создадимX и Y, указав значений нулевых как стартовые, после чего опишем a, b, c, d. Далее запишем дифференциальное уравнение (@fig:010 - @fig:011).

![Код модели "Хищник-жертва" OpenModelica](./images/omecode-1.png){#fig:010}

![Код OpenModelica для с.с.](./images/omecode-2.png){#fig:011}

Результат(OpenModelica) (@fig:010 - @fig:014)
![График зависимости численности хищников от численности жертв](./images/jlmodel1.png){#fig:012}

![График зависимости численности хищников и численности жертв от времени](./images/omemodel-2.png){#fig:013}

![График зависимости численности хищников и численности жертв от времени в стационарной системе](./images/omemodel-3.png){#fig:014}


# Вывод

В результате проделанной работы был написан код на Julia и OpenModelica и были построены математические модели: график зависимости численности хищников от численности жертв, а также график зависимости численности хищников и численности жертв от времени в стационарной системе.

# Список литературы

[1] Задания к лабораторной работе №5 (по вариантам) - https://esystem.rudn.ru/pluginfile.php/1971661/mod_resource/content/2/Задание%20к%20Лабораторной%20работе%20№%203%20%281%29.pdf

[2] Руководство к лабораторной работе №5 - https://esystem.rudn.ru/pluginfile.php/1971660/mod_resource/content/2/Лабораторная%20работа%20№%204.pdf