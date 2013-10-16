### Configuration file for mrepo

### These options show you the hardcoded defaults
### You can leave them out if this is what you want

### Main section defines paths, commands
### and what metadata to generate

## Default architecture is i386
default['mrepo']['main']['arch'] = "i386"

## The location of the example .shtml files
default['mrepo']['main']['htmldir'] = "/usr/share/mrepo/html"

## The location of the ISO images and RPM files
default['mrepo']['main']['srcdir'] = "/var/mrepo"

## The location of the generated repositories
default['mrepo']['main']['wwwdir'] = "/var/www/mrepo"

## The location of the dist config files
default['mrepo']['main']['confdir'] = "/etc/mrepo.conf.d"

## The location of the cachedir (used by yum)
default['mrepo']['main']['cachedir'] = "/var/cache/mrepo"

## The location of the lockdir
default['mrepo']['main']['lockdir'] = "/var/cache/mrepo"

## The location of the (latest) pxelinux bootcode
default['mrepo']['main']['pxelinux'] = "/usr/lib/syslinux/pxelinux.0"

## The location of the Yam TFTP files
default['mrepo']['main']['tftpdir'] = "/tftpboot/mrepo"

## The location of the logfile
default['mrepo']['main']['logfile'] = "/var/log/mrepo.log"

## The location of the different executables
default['mrepo']['main']['createrepocmd'] = "/usr/bin/createrepo"
default['mrepo']['main']['genbasedircmd'] = "/usr/bin/genbasedir"
default['mrepo']['main']['hardlinkcmd'] = "/usr/sbin/hardlink"
default['mrepo']['main']['hardlinkpluscmd'] = "/usr/bin/hardlink++"
default['mrepo']['main']['lftpcmd'] = "/usr/bin/lftp"
default['mrepo']['main']['mirrordircmd'] = "/usr/bin/mirrordir"
default['mrepo']['main']['mountcmd'] = "/bin/mount"
default['mrepo']['main']['repoviewcmd'] = "/usr/bin/repoview"
default['mrepo']['main']['rhngetcmd'] = "/usr/bin/rhnget"
default['mrepo']['main']['rsynccmd'] = "/usr/bin/rsync"
default['mrepo']['main']['umountcmd'] = "/bin/umount"
default['mrepo']['main']['yumarchcmd'] = "/usr/bin/yum-arch"

## What repository metadata do you want to generate ?
#metadata = apt repomd yum
default['mrepo']['main']['metadata'] = "repomd"

## Your username and password for RHN channel subscriptions
#rhnlogin = username:password
default['mrepo']['main']['rhnlogin'] = nil

## Specify the required proxy settings
#no_proxy = localhost,mrepo,webserver
#ftp_proxy = http://10.1.2.3:8080
#http_proxy = http://10.1.2.3:8080
#https_proxy = http://10.1.2.3:8080
default['mrepo']['main']['no_proxy'] = nil
default['mrepo']['main']['ftp_proxy'] = nil
default['mrepo']['main']['http_proxy'] = nil
default['mrepo']['main']['https_proxy'] = nil

## You can have mrepo send out report mails
# mailto = user@domain.com user2@domain2.com
default['mrepo']['main']['mailto'] = nil
default['mrepo']['main']['mailfrom'] = "mrepo@hostname"
default['mrepo']['main']['smtp_server'] = "localhost"

## Default output (put this to yes if you want mrepo to be silent by default)
default['mrepo']['main']['quiet'] = "no"

## Hardlink files in the srcdir before ending Yam
default['mrepo']['main']['hardlink'] = "no"

## Do you want to share the ISO files in wwwdir ?
default['mrepo']['main']['shareiso'] = "yes"

## Limit the bandwidth used by lftp (in B/secs)
default['mrepo']['main']['lftp_bandwidth_limit'] = nil

## Clean up packages that are not on the sending side ?
default['mrepo']['main']['lftp_cleanup'] = "yes"

## Exclude debuginfo or source packages ?
default['mrepo']['main']['lftp_exclude_debug'] = "yes"
default['mrepo']['main']['lftp_exclude_srpm'] = "yes"

## Add extra options to lftp (eg. -d for debugging lftp)
default['mrepo']['main']['lftp_options'] = nil

## Add extra commands to lftp (eg. set dns:fatal-timeout 5)
default['mrepo']['main']['lftp_commands'] = nil

## Add extra options to lftp mirror command
default['mrepo']['main']['lftp_mirror_options'] = "-c -P"

## Set the I/O timeout in seconds
default['mrepo']['main']['lftp_timeout'] = nil

## Clean up packages that are not on the sending side ?
default['mrepo']['main']['mirrordir_cleanup'] = "yes"

## Exclude debuginfo or source packages ?
default['mrepo']['main']['mirrordir_exclude_debug'] = "yes"
default['mrepo']['main']['mirrordir_exclude_srpm'] = "yes"

## Add extra options to mirrordir
default['mrepo']['main']['mirrordir_options'] = nil

## Delete packages that are no longer in the repo
default['mrepo']['main']['reposync_cleanup'] = "yes"

## Only download the latest packages
default['mrepo']['main']['reposync_newest_only'] = "no"

## Add extra options to reposync
default['mrepo']['main']['reposync_options'] = nil

## Set RHN login username:password
default['mrepo']['main']['rhnlogin'] = nil

## Add extra options to rhnget
default['mrepo']['main']['rhnget_options'] = nil

## Clean up packages that are not on the sending side ?
default['mrepo']['main']['rhnget_cleanup'] = "yes"

## Download older versions of a certain package ?
default['mrepo']['main']['rhnget_download_all'] = "no"

## Limit the bandwidth used by rsync in kilobytes per seconds
default['mrepo']['main']['rsync_bandwidth_limit'] = nil

## Clean up packages that are not on the sending side ?
default['mrepo']['main']['rsync_cleanup'] = "yes"

## Exclude debuginfo or source packages ?
default['mrepo']['main']['rsync_exclude_debug'] = "yes"
default['mrepo']['main']['rsync_exclude_srpm'] = "yes"

## Add extra options to rsync
default['mrepo']['main']['rsync_options'] = "-rtHL --partial"

## Set the I/O timeout in seconds
default['mrepo']['main']['rsync_timeout'] = nil

## Add extra options to createrepo
default['mrepo']['main']['createrepo_options'] = "-p"

## Add extra options to repoview
default['mrepo']['main']['repoview_options'] = nil


#### Example1: Using ISO files (put ISOs in /var/mrepo/dist1-i386), i386 is default arch
#default['mrepo']['repos']['dist1'] = {
#    'name'	=> "Distribution example $release ($arch)"
#    'release'	=> "1"
#    'metadata'	=> "apt"
#    'iso'	=> "dist$release-$arch-disc?.iso"
#    'updates'	=> "rsync://rsync.dist1.org/pub/dist/$release/$arch/$repo/"
#}
#
#### Example2: Using multiple archs for a single definition
#default['mrepo']['repos']['dist2'] = {
#    'name'	=> "Distribution example $release ($arch)"
#    'release'	=> "2"
#    'arch'	=> "i386 i586 i686 x86_64"
#    'metadata'	=> "repomd"
#    'os'	=> "rsync://rsync.dist2.org/pub/dist/$release/$arch/$repo/"
#    'updates'	=> "rsync://rsync.dist2.org/pub/dist/$release/$arch/$repo/"
#}
#
#### Example3: Using extra repositories and updates from Example1
#default['mrepo']['repos']['dist3'] = {
#    'name'	=> "Distribution example $release ($arch)"
#    'release'	=> "3"
#    'arch'	=> "x86_64"
#    'metadata'	=> "apt repomd"
#    'iso'	=> "dist$release-$arch-disc?.iso"
#    'os'	=> "rsync://rsync.dist3.org/pub/dist/$release/$arch/$repo/"
#    'updates'	=> "mrepo://dist1-$arch/$repo/"
#    'contrib'	=> "rsync://rsync.dist3.org/pub/dist/$release/$arch/$repo/"
#}
#
#### Example4: Merging repositories
#default['mrepo']['repos']['dist4'] = {
#    'name'	=> "Distribution example $release ($arch)"
#    'release'	=> "4"
#    'metadata'	=> "apt repomd yum"
#    'contrib'	=> "rsync://rsync.dist4.org/dist/$release/$arch/$repo/"
#    'extras'	=> "rsync://rsync.dist4.org/dist/$release/$arch/$repo/"
#    'merge'	=> [ "mrepo://$nick/contrib/", "mrepo://$nick/extras/" ]
#}

# vim: shiftwidth=4
