webdavdir = $(datadir)/@PACKAGE@/init/var/www/DATOS.server.grandkozel.ru/webdav
privatewwwdir =  $(datadir)/@PACKAGE@/init/var/www/DATOS.server.grandkozel.ru/Private
logapache2dir = $(datadir)/@PACKAGE@/init/var/log/apache2
sitesalailabledir = $(datadir)/@PACKAGE@/init/etc/apache2/sites-available/
webdav_DATA =webdav.descript.ion
privatewww_DATA = privatewww.descript.ion
logapache2_DATA = DATOS.server.grandkozel.ru-error.log DATOS.server.grandkozel.ru-access.log
sitesalailable_DATA = zzz-user-default.conf


do_subst = sed -e  's,[@]datadir[@],$(datadir),g' \
	-e 's,[@]bindir[@],$(bindir),g' \
	-e 's,[@]PACKAGE[@],$(PACKAGE),g' \
	-e 's,[@]VERSION[@],$(VERSION),g'
