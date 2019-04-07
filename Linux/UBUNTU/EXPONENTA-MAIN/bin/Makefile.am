mydiffdir = $(datadir)/@PACKAGE@/MYDIFF
mydiff_DATA = .sources.list.init.mydiff .sources.list.deinit.mydiff
bin_SCRIPTS = curdatetimerename.sh curdaterename.sh check_process_root.sh getip_1.sh check.uservariables.set.sh check.loc.systemvariables.set.sh check_uname_present.sh base.cmdshell.install.sh base.cmdshell.uninstall.sh new-user.sh deluser.sudo.sh addUniversalLoginAccount.sh delUniversalLoginAccount.sh turnOFFfw.sh zzz-run-service.sh check.rem.systemvariables.set.sh kali-kde-remove.sh kali-xcfe-install.sh kali-cinnamon-install.sh kali-xcfe-remove.sh kali-kde-install.sh periodic-clean.sh kali-lightdm-install.sh periodic-autofullupgrade.sh kali-lxde-remove.sh kali-lxde-install.sh kali-mate-install.sh kali-mate-remove.sh kali-gnome-remove.sh kali-gnome-install.sh kali-e17-install.sh kali-e17-remove.sh doublecmd-remove.sh doublecmd-install.sh kali-repairkey.sh audiosound-install.sh java-pack-install.sh archivators-remove.sh archivators-install.sh tor-n-torb-remove.sh tor-n-torb-install.sh kali-oth-install.sh kali-oth-remove.sh nvidia-drivers-install.sh kali-recordmydesktop-remove.sh kali-recordmydesktop-install.sh kali-cinnamon-remove.sh
CLEANFILES = $(bin_SCRIPTS)
EXTRA_DIST = curdatetimerename.in.sh curdaterename.in.sh check_process_root.in.sh getip_1.in.sh check.uservariables.set.in.sh check.loc.systemvariables.set.in.sh check_uname_present.in.sh base.cmdshell.install.in.sh base.cmdshell.uninstall.in.sh new-user.in.sh deluser.sudo.in.sh addUniversalLoginAccount.in.sh delUniversalLoginAccount.in.sh turnOFFfw.in.sh zzz-run-service.in.sh check.rem.systemvariables.set.in.sh kali-kde-remove.in.sh kali-xcfe-install.in.sh kali-cinnamon-install.in.sh kali-xcfe-remove.in.sh kali-kde-install.in.sh periodic-clean.in.sh kali-lightdm-install.in.sh periodic-autofullupgrade.in.sh kali-lxde-remove.in.sh kali-lxde-install.in.sh kali-mate-install.in.sh kali-mate-remove.in.sh kali-gnome-remove.in.sh kali-gnome-install.in.sh kali-e17-install.in.sh kali-e17-remove.in.sh doublecmd-remove.in.sh doublecmd-install.in.sh kali-repairkey.in.sh audiosound-install.in.sh java-pack-install.in.sh archivators-remove.in.sh archivators-install.in.sh tor-n-torb-remove.in.sh tor-n-torb-install.in.sh kali-oth-install.in.sh kali-oth-remove.in.sh nvidia-drivers-install.in.sh kali-recordmydesktop-remove.in.sh kali-recordmydesktop-install.in.sh kali-cinnamon-remove.in.sh


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

kali-kde-remove.sh : kali-kde-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-xcfe-install.sh : kali-xcfe-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-cinnamon-install.sh : kali-cinnamon-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-xcfe-remove.sh : kali-xcfe-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-kde-install.sh : kali-kde-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

periodic-clean.sh : periodic-clean.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-lightdm-install.sh : kali-lightdm-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

periodic-autofullupgrade.sh : periodic-autofullupgrade.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-lxde-remove.sh : kali-lxde-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-lxde-install.sh : kali-lxde-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-mate-install.sh : kali-mate-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-mate-remove.sh : kali-mate-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-gnome-remove.sh : kali-gnome-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-gnome-install.sh : kali-gnome-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-e17-install.sh : kali-e17-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-e17-remove.sh : kali-e17-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

doublecmd-remove.sh : doublecmd-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

doublecmd-install.sh : doublecmd-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-repairkey.sh : kali-repairkey.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

audiosound-install.sh : audiosound-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

java-pack-install.sh : java-pack-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

archivators-remove.sh : archivators-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

archivators-install.sh : archivators-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

tor-n-torb-remove.sh : tor-n-torb-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

tor-n-torb-install.sh : tor-n-torb-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-oth-install.sh : kali-oth-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-oth-remove.sh : kali-oth-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

nvidia-drivers-install.sh : nvidia-drivers-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-recordmydesktop-remove.sh : kali-recordmydesktop-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-recordmydesktop-install.sh : kali-recordmydesktop-install.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

kali-cinnamon-remove.sh : kali-cinnamon-remove.in.sh
	$(do_subst) < $(srcdir)/$< > $@
	chmod +x $@
	chmod o-w $@
	chmod g-w $@

