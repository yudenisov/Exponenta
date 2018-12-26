'*******************************************************************
' Имя: 		FromTxtDicToExcel.vbs
' Язык: 	VBScript                                                  
' Описание: 	Чтение строк из файла "Test.dic.txt" и
'		конверсия её в формат Excel
'*******************************************************************
Option Explicit
                            	
Dim XL  ' Объявляем переменные Excel

Dim FSO,F,TextStream,s, junk, Item, index, curindex  'Объявляем переменные
Dim iRow, iCol, iRows, iCols ' Строки и столбцы
Dim Result ' Результирующая строка (используется для отладки)
' Инициализируем константы
Const ForReading = 1, ForWriting = 2, TristateUseDefault = -2
Const xlCenter = 3, xlTop = -1, xlSolid = 0

'Создаем объект-приложение Microsoft Excel	
Set XL=WScript.CreateObject("Excel.Application")
'Делаем окно Microsoft Excel видимым
XL.Visible=true
'Открываем новую рабочую книгу
XL.WorkBooks.Add
'Устанавливаем нужную ширину колонок
XL.Columns(1).ColumnWidth = 10
XL.Columns(2).ColumnWidth = 40
XL.Columns(3).ColumnWidth = 10
XL.Columns(4).ColumnWidth = 10

' Создаем объект FileSystemObject
Set FSO=WScript.CreateObject("Scripting.FileSystemObject")
' Создаем объект File для файла "Test.dic.txt"
set F=FSO.GetFile("Test.dic.txt")
' Создаем объект TextStream (файл открывается для чтения)
Set TextStream=F.OpenAsTextStream(ForReading, TristateUseDefault)
iRow = 1 ' Инициализация переменной iRow (ряд)
iRows = iRow
iCols = 1
Result ="" 'Вначале результирующая строка -- пустая
' Цикл ПОКА не конец файла
Do
	' Считываем строку из файла
	s=TextStream.ReadLine
' Начало отладки. Вывод текста
'	WScript.Echo "Cтрока из файла:" & vbCrLf & s
' Конец отладки
	' Инициализация
	index = Len(s)+1
	Item=""
	curindex = 1
	iCol = 1
' Цикл пока не достигнута пустая строка
	While index <> curindex
		index = NextNumItem( curindex )
		curindex = index
		index = Len(s)+1
' В этот блок нужно всавить осмысленный обработчик Item. Начало блока
		Result = Result & "Item( " & iRow & ", " & iCol & " ) = " & Item & ". " & vbCrLf
		XL.Cells(iRow,iCol).Value=Item
		iCol = iCol + 1
		if iCols < iCol Then iCols = iCol
' Конец блока обработчика
		Item = ""
	Wend
	' Проверка на окончание цикла (ввода пустой строки)
	iRow = iRow + 1
	If iRows < iRow Then iRows = iRow
Loop While StrComp(s, "", 0)
' Начало отладки. Вывод текста
WScript.Echo "Последняя строка: " & iRows-2 & ", Последний столбец: " & iCols-1
' WScript.Echo Result
' Конец отладки

' Закрываем файл 
TextStream.Close
    XL.Range("A1:D1").Select
    With XL.Selection.Font
        .Name = "Arial"
        .Size = 11
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
    End With
    XL.Selection.Font.Bold = True
    With Xl.Selection
        .HorizontalAlignment = xlCenter
        .WrapText = True
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .MergeCells = False
    End With
    With XL.Selection.Interior
        .Pattern = xlSolid
        .Color = 13434879
    End With
    XL.Selection.AutoFilter

'*************  Конец ************************************************
'*********************************************************************
' Функция: 	NextNumItem 
' Язык 		VBScript
' Описание:	Процедура возвращает изменённую строку и значение её
' 		подстроки, ограниченной знаками `;`. При этом знаки
'		`"` игнорируются. Основное возвращаемое значение
'		позиция подстроки в строке.
' ********************************************************************
Function NextNumItem(OLdNumItem)
' Определение переменных
	Dim i, slen, tmp
' Определение длины исходной текстовой переменной
	slen=Len(s) 
' Инициализация индекса
	i= OldNumItem
' Цикл пока следующий символ не равен `;` или не достигнут конец строки
	Do
' Берём следующий символ из s
		tmp=Mid(s,i,1)
' Начало отладки
'	WScript.Echo "tmp = "  & tmp
' Конец отладки
' Увеличиваем индекс на единицу
		i=i+1
' ЕСли символ из s не равен `"` или ';', добавляем его к Item
		if tmp <> ";" AND tmp <> Chr(34) Then 
			Item=Item & tmp
		end if
	Loop Until tmp=";" OR i > slen + 1
' Конец цикла
' Начало отладки
'	WScript.Echo "Item = "  & Item
' Конец отладки
	if i > slen + 1 Then i = slen + 1
' Возвращение нового номера
	NextNumItem = i
End Function
'*************  Конец ************************************************
