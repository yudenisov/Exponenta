@echo off
rem Функция использует для своей работы единственный параметр,
rem которым является имя файла TIFF без расширения.
rem этот файл должен быть монохромным
rem
rem Конвертируем Tiff файл в формате DjVu
cjb2 -clean %1.tif %1.djvu
rem
rem Переименовываем "Старый" файл common.djvu в Old.djvu
ren common.djvu old.djvu
rem
rem Создаём новый файл common.djvu, присоединяя к файлу old.djvu файл %1.djvu
djvm -c common.djvu old.djvu %1.djvu
rem
rem Удаляем файлы old.djvu и %1.djvu
del old.djvu
del %1.djvu

