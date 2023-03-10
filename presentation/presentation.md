---
## Front matter
lang: ru-RU
title: Модель хищник-жертва
subtitle: Лабораторная работа №5
author:
  - Покрас Илья Михайлович 
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 2 марта 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

## Цели

Целью данной работы является построение модели хищник-жертва.

## Задачи

1. Построить график зависимости численности хищников от численности жертв

2. Построить график зависимости численности хищников и численности жертв от времени

3. Найти стационарное состояние системы

## Ход работы

Код Julia(@fig:001 - @fig:002):

![Код - 1 часть](./image/jlcode-1.png){#fig:001 height=75%}

## Ход работы

![Код - 2 часть](./image/jlcode-2.png){#fig:002 height=75%}

## Ход работы

Результаты(@fig:003 - @fig:005):

![График зависимости численности хищников от численности жертв](./image/model1.png){#fig:003 height=75%}

## Ход работы

![График зависимости численности хищников и численности жертв от времени](./image/model2.png){#fig:004 height=75%}

## Ход работы

![График зависимости численности хищников и численности жертв от времени в стационарной системе](./image/model3.png){#fig:005 height=75%}

## Ход работы

Код на OpenModelica(@fig:006 - @fig:007)

![Код модели "Хищник-жертва" OpenModelica](./image/omecode-1.png){#fig:006 height=75%}

## Ход работы

![Код OpenModelica для с.с.](./image/omecode-2.png){#fig:007}


## Ход работы

Результат(OpenModelica) (@fig:008 - @fig:010)

![График зависимости численности хищников от численности жертв](./image/omemodel-1.png){#fig:008 height=75%}

## Ход работы

![График зависимости численности хищников и численности жертв от времени](./image/omemodel-2.png){#fig:009 height=75%}

## Ход работы

![График зависимости численности хищников и численности жертв от времени в стационарной системе](./image/omemodel-3.png){#fig:010 height=75%}

## Результаты

В ходе выполнения лабораторной работы была изучена модель хищник-жертва и построены математические модели.