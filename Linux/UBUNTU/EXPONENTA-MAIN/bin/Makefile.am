mydiffdir = $(datadir)/@PACKAGE@/MYDIFF
mydiff_DATA = .sources.list.init.mydiff .sources.list.deinit.mydiff
bin_SCRIPTS = curdatetimerename.sh curdaterename.sh check_process_root.sh getip_1.sh check.uservariables.set.sh check.loc.systemvariables.set.sh check_uname_present.sh base.cmdshell.install.sh base.cmdshell.uninstall.sh new-user.sh deluser.sudo.sh addUniversalLoginAccount.sh delUniversalLoginAccount.sh turnOFFfw.sh zzz-run-service.sh check.rem.systemvariables.set.sh
CLEANFILES = $(bin_SCRIPTS)
EXTRA_DIST = curdatetimerename.in.sh curdaterename.in.sh check_process_root.in.sh getip_1.in.sh check.uservariables.set.in.sh check.loc.systemvariables.set.in.sh check_uname_present.in.sh base.cmdshell.install.in.sh base.cmdshell.uninstall.in.sh new-user.in.sh deluser.sudo.in.sh addUniversalLoginAccount.in.sh delUniversalLoginAccount.in.sh turnOFFfw.in.sh zzz-run-service.in.sh check.rem.systemvariables.set.in.sh


do_subst = sed -e  's,[@]datadir[@],$(datadir),g' \
	-e 's,[@]bindir[@],$(bindir),g' \
	-e 's,[@]PACKAGE[@],$(PACKAGE),g' \
	-e 's,[@]VERSION[@],$(VERSION),g'

curdaterename.sh : curdaterename.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

curdatetimerename.sh : curdatetimerename.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

check_process_root.sh : check_process_root.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

getip_1.sh : getip_1.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

check.uservariables.set.sh : check.uservariables.set.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

check.loc.systemvariables.set.sh : check.loc.systemvariables.set.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

check.rem.systemvariables.set.sh : check.rem.systemvariables.set.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

check_uname_present.sh : check_uname_present.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

base.cmdshell.install.sh : base.cmdshell.install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

base.cmdshell.uninstall.sh : base.cmdshell.uninstall.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

new-user.sh : new-user.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

deluser.sudo.sh : deluser.sudo.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

addUniversalLoginAccount.sh : addUniversalLoginAccount.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

delUniversalLoginAccount.sh : delUniversalLoginAccount.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

turnOFFfw.sh : turnOFFfw.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

zzz-run-service.sh : zzz-run-service.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

