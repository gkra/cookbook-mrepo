# These are the as-documented defaults for mrepo.

default['mrepo']['main']['arch'] = "x86_64"
default['mrepo']['main']['srcdir'] = "/var/mrepo"
default['mrepo']['main']['wwwdir'] = "/var/www/mrepo"
default['mrepo']['main']['confdir'] = "/etc/mrepo.conf.d"
default['mrepo']['main']['mailto'] = "root@localhost"
default['mrepo']['main']['mailfrom'] = "mrepo@hostname"
default['mrepo']['main']['smtp_server'] = "localhost"

#default['mrepo']['main']['htmldir'] = "/usr/share/mrepo/html"
#default['mrepo']['main']['cachedir'] = "/var/cache/mrepo"
#default['mrepo']['main']['lockdir'] = "/var/cache/mrepo"
#default['mrepo']['main']['pxelinux'] = "/usr/lib/syslinux/pxelinux.0"
#default['mrepo']['main']['tftpdir'] = "/tftpboot/mrepo"
#default['mrepo']['main']['logfile'] = "/var/log/mrepo.log"
#default['mrepo']['main']['createrepocmd'] = "/usr/bin/createrepo"
#default['mrepo']['main']['genbasedircmd'] = "/usr/bin/genbasedir"
#default['mrepo']['main']['hardlinkcmd'] = "/usr/sbin/hardlink"
#default['mrepo']['main']['hardlinkpluscmd'] = "/usr/bin/hardlink++"
#default['mrepo']['main']['lftpcmd'] = "/usr/bin/lftp"
#default['mrepo']['main']['mirrordircmd'] = "/usr/bin/mirrordir"
#default['mrepo']['main']['mountcmd'] = "/bin/mount"
#default['mrepo']['main']['repoviewcmd'] = "/usr/bin/repoview"
#default['mrepo']['main']['rhngetcmd'] = "/usr/bin/rhnget"
#default['mrepo']['main']['rsynccmd'] = "/usr/bin/rsync"
#default['mrepo']['main']['umountcmd'] = "/bin/umount"
#default['mrepo']['main']['yumarchcmd'] = "/usr/bin/yum-arch"
#default['mrepo']['main']['metadata'] = "repomd"
#default['mrepo']['main']['rhnlogin'] = nil
#default['mrepo']['main']['no_proxy'] = nil
#default['mrepo']['main']['ftp_proxy'] = nil
#default['mrepo']['main']['http_proxy'] = nil
#default['mrepo']['main']['https_proxy'] = nil
#default['mrepo']['main']['quiet'] = "no"
#default['mrepo']['main']['hardlink'] = "no"
#default['mrepo']['main']['shareiso'] = "yes"
#default['mrepo']['main']['lftp_bandwidth_limit'] = nil
#default['mrepo']['main']['lftp_cleanup'] = "yes"
#default['mrepo']['main']['lftp_exclude_debug'] = "yes"
#default['mrepo']['main']['lftp_exclude_srpm'] = "yes"
#default['mrepo']['main']['lftp_options'] = nil
#default['mrepo']['main']['lftp_commands'] = nil
#default['mrepo']['main']['lftp_mirror_options'] = "-c -P"
#default['mrepo']['main']['lftp_timeout'] = nil
#default['mrepo']['main']['mirrordir_cleanup'] = "yes"
#default['mrepo']['main']['mirrordir_exclude_debug'] = "yes"
#default['mrepo']['main']['mirrordir_exclude_srpm'] = "yes"
#default['mrepo']['main']['mirrordir_options'] = nil
#default['mrepo']['main']['reposync_cleanup'] = "yes"
#default['mrepo']['main']['reposync_newest_only'] = "no"
#default['mrepo']['main']['reposync_options'] = nil
#default['mrepo']['main']['rhnlogin'] = nil
#default['mrepo']['main']['rhnget_options'] = nil
#default['mrepo']['main']['rhnget_cleanup'] = "yes"
#default['mrepo']['main']['rhnget_download_all'] = "no"
#default['mrepo']['main']['rsync_bandwidth_limit'] = nil
#default['mrepo']['main']['rsync_cleanup'] = "yes"
#default['mrepo']['main']['rsync_exclude_debug'] = "yes"
#default['mrepo']['main']['rsync_exclude_srpm'] = "yes"
#default['mrepo']['main']['rsync_options'] = "-rtHL --partial"
#default['mrepo']['main']['rsync_timeout'] = nil
#default['mrepo']['main']['createrepo_options'] = "-p"
#default['mrepo']['main']['repoview_options'] = nil

# Examples of how to define repositories

#### Example1: Using ISO files (put ISOs in /var/mrepo/dist1-i386), i386 is default arch
#default['mrepo']['repos']['dist1'] = {
#    'name'	=> "Distribution example $release ($arch)",
#    'release'	=> "1",
#    'metadata'	=> "apt",
#    'iso'	=> "dist$release-$arch-disc?.iso",
#    'updates'	=> "rsync://rsync.dist1.org/pub/dist/$release/$arch/$repo/"
#}
#
#### Example2: Using multiple archs for a single definition
#default['mrepo']['repos']['dist2']['name'] = "Distribution example $release ($arch)",
#default['mrepo']['repos']['dist2']['release'] = "2",
#default['mrepo']['repos']['dist2']['arch'] = "i386 i586 i686 x86_64",
#default['mrepo']['repos']['dist2']['metadata'] = "repomd",
#default['mrepo']['repos']['dist2']['os'] = "rsync://rsync.dist2.org/pub/dist/$release/$arch/$repo/",
#default['mrepo']['repos']['dist2']['updates'] = "rsync://rsync.dist2.org/pub/dist/$release/$arch/$repo/"
#
#### Example3: Using extra repositories and updates from Example1
#default['mrepo']['repos']['dist3'] = {
#    'name'	=> "Distribution example $release ($arch)",
#    'release'	=> "3",
#    'arch'	=> "x86_64",
#    'metadata'	=> "apt repomd",
#    'iso'	=> "dist$release-$arch-disc?.iso",
#    'os'	=> "rsync://rsync.dist3.org/pub/dist/$release/$arch/$repo/",
#    'updates'	=> "mrepo://dist1-$arch/$repo/",
#    'contrib'	=> "rsync://rsync.dist3.org/pub/dist/$release/$arch/$repo/"
#}
#
#### Example4: Merging repositories
#default['mrepo']['repos']['dist4'] = {
#    'name'	=> "Distribution example $release ($arch)",
#    'release'	=> "4",
#    'metadata'	=> "apt repomd yum",
#    'contrib'	=> "rsync://rsync.dist4.org/dist/$release/$arch/$repo/",
#    'extras'	=> "rsync://rsync.dist4.org/dist/$release/$arch/$repo/",
#    'merge'	=> [ "mrepo://$nick/contrib/", "mrepo://$nick/extras/" ]
#}

# vim: shiftwidth=4
