Exponenta
=========

Пакет для удалённого взлома компьютера и управления им. Сочетает в себе
множество функций, поэтому автор не может отнести его к определённому
классу зловредов. Наиболее близкий класс в категории зловредов —
стайлеры (Stealer)

Для своей работы данный пакет требует дополнительные пакеты и
программное обеспечение. Ссылки можно найти в документации.

Заявленные функции
==================

-   Возможна скрытая установка методами социальной инженерии.
-   При своей работе требует права локального администратора.
-   Позволяет скрытно устанавливать пакеты на заражённый компьютер.
-   Позволяет запускать файлы на удалённом компьютере. Результат
    передаётся «Хозяину» по FTP либо по HTTP протоколу

Системные требования
====================

-   Компьютер с установленной Microsoft Windows 7 SP1 — Windows 10 Pro
    или Microsoft Windows Server 2008 R2 — 2016.
-   Учётная запись локального администратора компьютера или
    администратора домена.
-   Установленные в системе пакеты PowerShell 2.0, Console FTP client,
    systeminfo.exe. Эти пакеты изначально присутствуют в указанных
    системах, они просто не должны быть удалены администратором.

Необходимые дополнительные пакеты для работы
============================================

-   Менеджер пакетов chocolatey.
-   Модифицированная версия программы Elevation.
-   Программа Hidden Start (зарегистрированная версия).
-   Программа duck — консольный клиент для синхронизации облачных
    сервисов.
-   Установленный из Chocolatey пакет sysinternals.
-   Установленный из Chocolatey пакет curl.
-   Установленный из Chocolatey пакет wget.

Программа Exponenta устанавливает их сразу же после своей инсталляции.

Инсталляция программного обеспечения
====================================

Посмотрите файл INSTALL.MD в каталоге с готовыми модулями Windows
(только на русском языке)

Пересборка модулей для инсталляции
----------------------------------

Посмотрите соответствующие файлы README.MD в каталогах с исходными
модулями (только на русском языке).

Дополнительно
=============

Как основные модули стайлера, так и его плагины не относятся к вирусам и
потенциально нежелательным программам и поэтому не опознаются
антивирусными программами. Стайлер эксплуатирует общую уязвимость стека
протоколов TCP/IP, которая была заложена в него на этапе разработки
Интернета в 80-х годах XX века, и никогда не будет исправлена по
определению. Этот стайлер может быть обнаружен только программами аудита
системы и отслеживания проникновений, а также, в меньшей степени,
сниферами трафика и аппаратными сетевыми фильтрами. Использование
брандмауэров для предотвращения заражения бесполезно, как и антивирусов.
Самой же лучшей защитой будет высокая корпоративная культура работы с
входящими сообщениями в организации.

Контакты
========

По вопросам тестового использования и обнаружения заражения с автором
можно связаться по [e-mail](mailto:yudenisov@mail.ru), ICQ 120105414,
[Messenger](https://m.me/yudenisov) и Telegram (@yudenisov), а также
[WhatsApp/Viber](tel:+79047071125). Консультаций по криминальному
использованию этой программы, равно как пользование ею террористами и
спецслужбами, автор не даёт. Для этого есть соответствующие форумы. :-)

Все консультации по использованию программы и предотвращения заражения
платные. Консультации доступны только на русском языке. Стоимость
консультаций уточняйте при обращении (фиксированной цены нет). Оплата по
безналичному расчёту или через платёжные системы/банки.

Exponenta
=========

It is a packet for remote computer hacking and control of it. It
combines a set of functions therefore the author cannot carry it to a
certain class of malwares. The most close class in category of malwares
— stealer.

This package requires additional packets and the software for the
operation. References to them can be found in documentation.

The stated functions
====================

-   The hidden installation is possible by methods of social
    engineering.
-   The program requires the right of the local administrator by the
    operation.
-   The program allows to hidden install packages on the infected
    computer.
-   The program allows to launch files on the remote computer. The
    result of operation of these programs is transferred to “Master” on
    FTP or HTTP protocol.

System requirements
===================

-   The computer with Microsoft Windows 7 SP1 — Microsoft Windows 10 Pro
    or Microsoft Windows Server 2008 R2 — 2016 to be installed.
-   The account of a local administrator of a computer or a domain
    administrator is present.
-   Packages of the PowerShell 2.0, the console FTP client, the
    systeminfo.exe shall be installed in system. These packets are
    present at the specified systems initially, they shall not be
    removed by the administrator at all.

Necessary additional packets for operation
==========================================

-   Chocolatey Package Manager.
-   The modified version of the Elevation program.
-   The registered version of the Hidden Start program.
-   The duck program is a console client for synchronization of cloud
    services.
-   The installed sysinternals package from Chocolatey.
-   The installed curl package from Chocolatey.
-   The installed wget package from Chocolatey.

The Exponenta program sets them at once after the installation.

Installation of the software
============================

Look at the INSTALL.MD file in the directory with ready Windows modules
(only in Russian)

Remodular assembly for installation
-----------------------------------

Look at the appropriate README.MD files in directories with the initial
modules (only in Russian).

In addition
===========

Both the main modules of a stealer, and its plug-ins do not belong to
malwares and potentially unwanted programs and therefore they are not
identified by anti-virus programs. Stealer exploits the general
vulnerability of a stack of protocols of TCP/IP which was put in it at a
development stage of the Internet in the eighties of the 20th century,
and will never be corrected by determination. This stealer can be found
only by programs of audit of system and tracing of penetrations and
also, to a lesser extent, sniffers of a traffic and the hardware supply
line filters. Using of firewalls, as well as antiviruses for preventing
of infection with this stealer is a useless occupation.

All consultations on use of the program and preventing of infection 
are paid. Consultations are available only in Russian. Specify the cost 
of consultations in case of the address. The fixed price does not exist. 
Payment by bank transfer or through payment service providers and banks.
