#!/bin/bash
DATE=`date -I`
echo "Время создания файла: $(date +"%T")" > $DATE.txt

echo "Введите новое время в формате 15 SEP 2015 16:15:00"
read USER_DATE
echo "Время, введенное пользователем: $USER_DATE" >> $DATE.txt

echo "Время проведения операции записано в текстовый файл"