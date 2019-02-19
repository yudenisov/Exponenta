mydiffdir = $(datadir)/@PACKAGE@/MYDIFF
mydiff_DATA = apache2.conf.mydiff sources.list.mydiff 000-default.conf.mydiff proftpd.conf.mydiff autoindex.conf.mydiff userdir.conf.mydiff


do_subst = sed -e  's,[@]datadir[@],$(datadir),g' \
	-e 's,[@]bindir[@],$(bindir),g' \
	-e 's,[@]PACKAGE[@],$(PACKAGE),g' \
	-e 's,[@]VERSION[@],$(VERSION),g'

