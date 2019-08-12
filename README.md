# Виселица #
Консольная версия популярной игры (Источник: [Cсылка](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0)))
## Описание ##
* Игра загадывает слово, игрок должен его отгадать за 7 попыток.
* Игра не чувствительна к регистру, можно вводить как маленькие, так и большие буквы.
* Также игра считает буквы "е" и "ё", также "и" и "й" одной буквой и если введена одна, а в слове есть другая, то игра открывает и её тоже.
* При каждой неудачной попытке, дорисовывается новый фрагмент виселицы из файлов в папке `/image`
>Игра написана на языке Ruby, используемая кодировка UTF-8.
## Установка ##
* Создайте отдельную папку (директорию) скачайте и поместите в нее все файлы и папки.
* В командной строке зайдите в созданную директорию: cd c:\название директории\
* Последовательно вводите: 
1. Чтобы скачать необходимые для игры библиотеки.
```
bundle install
```
2. Чтобы запусть саму игру с необходимыми версиями библиотек.
```
bundle exec ruby viselitsa.rb
```
3.  Приятной игры :).
## Как добавить слов в игру ##
- Для начала нужно зайти впапку `/data`
- Открыть файл `words.txt`
- С новой строки добавить нужные Вам слова
- Сохранить файл в кодировке UTF-8

## Контактные данные ##
stereotype1@mail.ru
