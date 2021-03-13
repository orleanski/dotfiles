## {{{--| Annotations |
# (AT) sign @ prevent make from announcing command it's going to do
# Dollar sign $ is interpreted as varible, to use it make it double $$
#
# Each line that has an un-escaped new-line is echoed to the screen and is
# passed off to a shell child process shell which then executes it. If the
# shell returns a non-zero exit value make will then generally abort any
# further processing with a warning.
#
# The ``-'' tells make to ignore any return value and to continue on to the
# next command. Disregarding return values can be set globally with either the
# ``-i'' option or the ``fake'' target .IGNORE in the Makefile.
#
# The other special character ``@'' tells make not to echo the command to
# stdout. Echoing can be disabled globally with either the ``-s'' option or the
# fake target .SILENT.
#
# Special Targets
# .DEFAULT 	Its associated actions are invoked whenever make is given a
# target that is not defined.
# .IGNORE 	Ignores all return codes from actions. Same as command-line
# option ``-l''. By default make will stop processing whenever a non-zero return
# status is received from an action.
# .SILENT 	Will not echo the action as its processed. Same as command-line
# option ``-s''. By default make will echo the action to stdout prior to
# invocation.
# .SUFFIXES 	Appends any given ``prerequisites'' to the list of suffixes
# with implicit rules. If none are given then wipe the list of suffixes.
## }}}
#{{{--| Defines |
SHELL = /bin/bash
KERNELVERSION := $(shell uname -r)
#}}}
# {{{--| Default |
.PHONY: help sync list dlist ddlist newmirrors fxorgdrv xorgdrv fmod fdups swipekde clean rmlogs chmodapk timesync fscheck

help:
	@eval $$(sed -r -n 's/^([a-zA-Z0-9_-]+):.*?##\{\{\{ (.*)$$/printf "\\033[36m%-20s\\033[0m %s\\n" "\1" "\2" ;/; ta; b; :a p' $(MAKEFILE_LIST) )
# next one working too
#	@grep -E '^[a-zA-Z_-]+:.*?##.*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?##{{{ "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# }}}
# }}}
sync: ##{{{ eix-sync output to emrg.txt
	eix-sync; \
	emerge -pvu @world &> /root/emrg.txt; \
	date >> /root/emrg.txt; \
	less emrg.txt
# }}}
list: ##{{{ Make list of updates in emrg.txt
	emerge -pvu @world &> /root/emrg.txt; \
	date >> /root/emrg.txt; \
	less emrg.txt
# }}}
dlist: ##{{{ Make list of Deep NewUse updates in emrg.txt
	emerge -pvuDN @world &> /root/emrg.txt; \
	date >> /root/emrg.txt; \
	less emrg.txt
# }}}
ddlist: ##{{{ Make list of Deep NewUse updates with deps in emrg.txt
	emerge -pvuDN --with-bdeps=y @world &> /root/emrg.txt; \
	date >> /root/emrg.txt; \
	less emrg.txt
# }}}
newmirrors: ##{{{ Find fastest mirrors and save in mirror.txt
#	mirrorselect -s3 -b10 -o -D > mirrors.txt; \
	mirrorselect -c USA -b10 -o > mirrors.txt; \
	less mirrors.txt
# }}}
fxorgdrv: ##{{{ Fetches and reinstalls drivers and xorg-server
	emerge -1vf $$(eix --only-names -I xf86- -C x11-drivers); \
	emerge -fu xorg-server
# }}}
xorgdrv: ##{{{ Reinstalls drivers and xorg-server
	/etc/init.d/display-unit stop; \
	emerge -vuq xorg-server; \
	emerge -1vq `(eix --only-names -I xf86- -C x11-drivers)`; \
	/etc/init.d/display-unit start
# }}}
fmod: ##{{{ Find all compiled modules for a specific kernel version
	find /lib/modules/$(KERNELVERSION)/ -type f -iname '*.o' -or -iname '*.ko' > /root/modules.txt; \
	less /root/modules.txt
#}}}
fdups: ##{{{ Find slotted packages
	equery list --duplicates "*"
#}}}
swipekde: ##{{{ Remove kde4 traces from /root/ directory
	rm -rf .config/akonadi/
	rm -rf .config/autostart/
	rm -rf .dbus/
	rm -rf .gconf/
	rm -rf .gconfd/
	rm -rf .kde4/
	rm -rf .gstreamer*
#}}}
clean: ##{{{ cleanup distfiles dir
	rm -f /var/cache/distfiles/*.{bz2,gz,crate,run,tgz,tbz2,cab,lzma,xpi,xz,zip,deb,mod,asc,patch,test,gem,sig}; \
	rm -f /var/cache/distfiles/*_checksum*; \
	ls -al /var/cache/distfiles/
# }}}
rmlogs: ##{{{ remove log files
	rm /var/log/portage/*.log
# }}}
chmodapk: ##{{{ chmod 644 to all files recursevely
	find /home/dmn/torrents/android/depot.apk/ -type f -exec chmod 644 {} +
# }}}
timesync: ##{{{ Immediate time corection
# 	If chronyd isn't already running, a command similar to 'ntpdate "
#	pool.ntp.org' could be (since version 1.30): "
#
#	chronyd -q 'server pool.ntp.org iburst' "
#
#	If it's already running and it has some servers configured, an "
#	equivalent would be: "
#
#	chronyc -a 'burst 4/4' "
#
#	If you want chronyd to also step the clock instead of slewing if there "
#	is a larger offset and chrony.conf doesn't include an unlimited makestep "
#	directive, you will also need to wait until the new measurements are "
#	made and then tell chronyd to make the step: "
#
#	sleep 10 "
#	chronyc -a makestep "
	chronyc -a 'burst 4/4'; \
	sleep 10; \
	chronyc -a makestep
# }}}
fscheck: ##{{{ check ext4 on root file system
	fsck.ext4 -cDfty -C 0 /dev/sda3
# }}}
swap: ##{{{ create and activate 5G /.swapfile
	dd if=/dev/zero of=/.swapfile bs=1024 count=5M; \
	chmod 0600 /.swapfile; \
	mkswap -L tempswp /.swapfile; \
	swapon /.swapfile; \
	swapon --show
#}}}
weather: ##{{{ check weather in Pago Pago
	curl wttr.in/Pago_Pago
# }}}

