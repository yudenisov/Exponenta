bin_SCRIPTS = new_userwebsite.sh new-apache.sh new-proftpd.sh del_userwebsite.sh
CLEANFILES = $(bin_SCRIPTS)
EXTRA_DIST = new_userwebsite.in.sh new-apache.in.sh new-proftpd.in.sh del_userwebsite.in.sh 


do_subst = sed -e  's,[@]datadir[@],$(datadir),g' \
	-e 's,[@]bindir[@],$(bindir),g' \
	-e 's,[@]PACKAGE[@],$(PACKAGE),g' \
	-e 's,[@]VERSION[@],$(VERSION),g'

new_userwebsite.sh : new_userwebsite.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

new-apache.sh : new-apache.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

new-proftpd.sh : new-proftpd.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

del_userwebsite.sh : del_userwebsite.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

