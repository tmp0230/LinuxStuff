Linux Stuff
==========
The configs and scripts in My Linux

## Version:
- Author: Marslo
- Email: marslo.jiao@gmail.com
- Created: 2013-10-07 21:43:42
- Version: 0.0.4
- LastChange: 2014-02-12 01:20:03
- History:
    - 0.0.1 | Marslo | init
    - 0.0.2 | Marslo | Add the information for moc building
    - 0.0.3 | Marslo | Update .gitconfig and .marslorc
    - 0.0.4 | Marslo | Add font, Bluetooth, Cursor configs

## Content
- [Configurations](https://github.com/Marslo/LinuxStuff#configurations)
    - [HOME Configuration](https://github.com/Marslo/LinuxStuff#home-config-usage)
    - [Git Alias](https://github.com/Marslo/LinuxStuff#git-alias)
    - [Tig](https://github.com/Marslo/LinuxStuff#git-alias)
    - [Konsole](https://github.com/Marslo/LinuxStuff#konsole)
- [Settings](https://github.com/Marslo/LinuxStuff#settings)
    - [Chinese Font](https://github.com/Marslo/LinuxStuff#adjust-chinese-font)
    - [System Monitor](https://github.com/Marslo/LinuxStuff#adjust-chinese-font)
    - [Ubuntu Theme](https://github.com/Marslo/LinuxStuff#adjust-chinese-font)
    - [Cursor](https://github.com/Marslo/LinuxStuff#adjust-chinese-font)
    - [Disable Bluetooth](https://github.com/Marslo/LinuxStuff#disable-bluetooth-booting)
    - [ALSA](https://github.com/Marslo/LinuxStuff#alsa-settings)
- [Moc stuff](https://github.com/Marslo/LinuxStuff#build-and-install-moc-music-on-console-by-source-code)

## Configurations
### HOME config usage:
- Add the following statement in `.bashrc` or `/etc/bashrc`(RHEL/CentOS) or `/etc/bash.bashrc`(Ubuntu) :
<pre><code>source \<Path_To_.marslo\>/.marslo/.marslorc
source \<Path_To_.marslo\>/.marslo/.alias_marslo_[ubuntu/cgwin/linux/ubuntu/server]
</code></pre>
- inputrc:
    - Copy the **.inputrc** in `$HOME`
    <pre><code>cp Configs/HOME/.inputrc ~
    </code></pre>
- The vim in github:
<pre><code>$ git clone git@github.com:b4winckler/vim.git
</code></pre>

### Git alias
- Copy `.gitconfig` to `$HOME`
<pre><code>cp Configs/HOME/Git/.gitconfig ~
</code></pre>
- And make sure the `.marslorc`(.marslo/.marslorc) file sourced in `.bashrc`. Otherwise, `$ git ldiff` and `$git info` not available.

### Tig
#### Installation:
- Ubuntu:
<pre><code>$ sudo apt-get install tig</code></pre>

- Install by manual:
    - Download at [jonas/tig](https://github.com/jonas/tig)
    - Build and install

#### Configuration
- Copy **.tigrc** and **.tig/marslo.tigrc** to `$HOME` folder
<pre><code>$ cp -r LinuxStuff/Configs/HOME/.tig* $HOME</code></pre>
- Open tig, and enjoy it
<pre><code>$ tig</code></pre>

### Konsole
#### Installation:
<pre><code>$ sudo apt-get install konsole</code></pre>

#### Restore the settings
- Copy `<LinuxStuff>/Configs/HOME/Konsole` to `~/.kde/share/apps/konsole`
    <pre><code>cp -r Configs/HOME/Konsole ~/.kde/share/apps/konsole</code></pre>

#### Shortcuts in Konsole:
- `Alt + J`: Scroll Down one Line
- `Alt + K`: Scroll Up one Line

## Settings
### Adjust Chinese Font

    $ cat /etc/fonts/conf.d/49-sansserif.conf
    ....
    18       <string>WenQuanYi Micro Hei</string>
    ....

### Install System Monitor Indicator

    $ sudo apt-get install indicator-multiload

### Install Ubuntu theme

    $ sudo add-apt-repository ppa:noobslab/themessudo
    $ sudo apt-get update
    $ sudo apt-get install nokto-theme

### Specified cursor
<pre><code>$ cat /usr/share/icons/default/index.theme 
[Icon Theme]
Inherits=handhelds
</code></pre>

### Disable Bluetooth booting
#### To stop bluetooth service
<pre><code>$ sudo service bluetooth stop</code></pre>

#### Disable bluetooth service on startup
<pre><code>$ cat /etc/rc.local
....
# Turn off bluetooth
rfkill block bluetooth
exit 0
</code></pre>

#### Disable the bluetooth driver on startup
<pre><code>$ cat /etc/modprob.d/blacklist.conf
....
# Turn off bluetooth
blacklist btusb
</code></pre>

#### Cut power source for bluetooth to run
<pre><code>cat /etc/bluetooth/main.conf
...
 4 DisablePlugins = network,input
...
37 nitiallyPowered = false
</code></pre>

#### [DANGEROUS]: REMOVE BLUETOOTH MANAGER AND ALL DEPENDENCIE
<pre><code>$ sudo apt-get remove bluez* bluetooth
$ sudo apt-get autoremove
</code></pre>

#### Reference
- [Nam Huy Linux Blog](http://namhuy.net/1397/disable-bluetooth-ubuntu-xubuntu-linux-mint.html)
- [Stackoverflow answers](http://askubuntu.com/questions/67758/how-can-i-deactivate-bluetooth-on-system-startup)

### ALSA Settings:
#### Informations
- Check the **type** of Sound Card:
<pre><code>$ head -1 /proc/asound/card0/codec#0
Realtek ALC262
</code></pre>
- Check the **version** of Sound Card:
<pre><code>$ /proc/asound/version
Advanced Linux Sound Archite chue Driver Version 1.0.24
</code></pre>
- Check the **configuration** about Sound Card
<pre><code>$ vi /etc/modprobe.d/alsa-base.conf</code></pre>

#### Install extra libs (ubuntu 13.04)
<pre><code>$ sudo apt-get install build-essential ncurses-dev gettext  libncursesw5-dev
$ sudo apt-get install xmlto
</code></pre>

#### Update ALSA in Ubuntu (<= 12.10)
- Download **alsa driver**, **alsa lib** and **alsa utils**
<pre><code>$ wget ftp://ftp.alsa-project.org/pub/driver/alsa-driver-1.0.25.tar.bz2
$ wget ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.25.tar.bz2
$ wget ftp://ftp.alsa-project.org/pub/utils/alsa-utils-1.0.25.tar.bz2
$ tar xjvf alsa-driver-1.0.25.tar.bz2
$ tar xjvf alsa-lib-1.0.25.tar.bz2
$ tar xjvf alsa-utils-1.0.25.tar.bz2
</code></pre>
- Upgrade **alsa dirver**
<pre><code>$ cd alsa-driver-1.0.25
$ sudo ./configure
$ sudo make
$ sudo make install
</code></pre>
- Upgrade **alsa lib**
<pre><code>$ cd../alsa-lib-1.0.25
$ sudo ./configure
$ sudo make
$ sudo make install
</code></pre>
- Upgrade **alsa utils**
<pre><code>$ cd../alsa-utils-1.0.25
$ sudo ln -s libpanelw.so.5 /usr/lib/libpanelw.so
$ sudo ln -s libformw.so.5 /usr/lib/libformw.so
$ sudo ln -s libmenuw.so.5 /usr/lib/libmenuw.so
$ sudo ln -s libncursesw.so.5 /lib/libncursesw.so
$ ./configure --with-curses=ncurses
$ sudo make
$ sudo make install
</code></pre>
- Reboot
<pre><code>$ sudo shutdown -r now </code></pre>

#### Change settings in Sound Card
- Input `alsamixer`, and input **[F6]** to select sound card:
<pre><code>$ alsamixer</code></pre>
![alsamixer](https://github.com/Marslo/LinuxStuff/blob/master/Screenshots/alsamixer.png?raw=true)
- Startup Settings
<pre><code>Name£º [Everything_You_Want]
Command: /sbin/alsactl restore
</code></pre>

## Build and Install MOC (Music on Console) by Source Code
### Precondiction:
- Download source code from [Official Web Site](http://moc.daper.net/download)
- [moc-2.5.0-beta1](http://ftp.daper.net/pub/soft/moc/unstable/moc-2.5.0-beta1.tar.bz2)
- [DEB packages FTP](http://ftp.de.debian.org/pub/debian/pool/main/m/moc/)

### Moc config:
- Check details at [here](https://github.com/Marslo/Moc_Cmus-Config)

### Errors and Soluctions
- error: BerkeleyDB (libdb) not found
    <pre><code>sudo apt-get install libdb++-dev libdb-dev
    </code></pre>
- decoder.c:22:18: fatal error: ltdl.h
    <pre><code>sudo apt-get install libltdl-dev
    </code></pre>
- FATAL_ERROR: No valid sound driver!
    - Error shows:
        <pre><code>[marslo@MarsloJiao ~]
        $ mocp
        Running the server...
        Trying OSS...
        FATAL_ERROR: No valid sound driver!
        FATAL_ERROR: Server exited!
        [marslo@MarsloJiao ~]
        $ gdb mocp core
        GNU gdb (GDB) 7.6.1-ubuntu
        Copyright (C) 2013 Free Software Foundation, Inc.
        License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
        This is free software: you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
        and "show warranty" for details.
        This GDB was configured as "i686-linux-gnu".
        For bug reporting instructions, please see:
        <http://www.gnu.org/software/gdb/bugs/>...
        Reading symbols from /home/marslo/Tools/Software/SourceCode/Moc/moc-2.5.0-beta1/mocp...done.
        /home/marslo/Tools/Software/SourceCode/Moc/moc-2.5.0-beta1/core: No such file or directory.
        (gdb) run
        Starting program: /home/marslo/Tools/Software/SourceCode/Moc/moc-2.5.0-beta1/mocp
        [Thread debugging using libthread_db enabled]
        Using host libthread_db library "/lib/i386-linux-gnu/libthread_db.so.1".
        Running the server...
        Trying OSS...
        FATAL_ERROR: No valid sound driver!
        FATAL_ERROR: Server exited!
        [Inferior 1 (process 18165) exited with code 02]
        (gdb) exit
        Undefined command: "exit".  Try "help".
        (gdb) quit
        </code></pre>

    - Soluction
        <pre><code>
        sudo apt-get install libncurses5-dev libncursesw5-dev libasound2-dev libvorbis-dev libmad0-dev libid3tag0-dev zlib1g-dev libsndfile1-dev libflac-dev libogg-dev libsamplerate0-dev libspeex-dev libmpcdec-dev libsidplay2-dev libsidutils-dev libresid-builder-dev libwavpack-dev libtagc0-dev libcurl4-gnutls-dev libavcodec-dev libavformat-dev libltdl3-dev libtool libmodplug-dev automake1.9 autoconf
        </code></pre>

        <pre><code> [marslo@MarsloJiao ~]
        $ sudo apt-get install libncurses5-dev libncursesw5-dev libasound2-dev libvorbis-dev libmad0-dev libid3tag0-dev zlib1g-dev libsndfile1-dev libflac-dev libogg-dev libsamplerate0-dev libspeex-dev libmpcdec-dev libsidplay2-dev libsidutils-dev libresid-builder-dev libwavpack-dev libtagc0-dev libcurl4-gnutls-dev libavcodec-dev libavformat-dev libltdl3-dev libtool libmodplug-dev automake1.9 autoconf
        Reading package lists... Done
        Building dependency tree
        Reading state information... Done
        Note, selecting 'libltdl-dev' instead of 'libltdl3-dev'
        libltdl-dev is already the newest version.
        libncurses5-dev is already the newest version.
        libncursesw5-dev is already the newest version.
        libogg-dev is already the newest version.
        libogg-dev set to manually installed.
        libtool is already the newest version.
        libtool set to manually installed.
        libvorbis-dev is already the newest version.
        zlib1g-dev is already the newest version.
        libavcodec-dev is already the newest version.
        libavcodec-dev set to manually installed.
        libavformat-dev is already the newest version.
        The following packages were automatically installed and are no longer required:
          librcc0 librcd0 linux-headers-generic linux-image-generic
        Use 'apt-get autoremove' to remove them.
        The following extra packages will be installed:
          comerr-dev krb5-multidev libgssrpc4 libidn11-dev libkadm5clnt-mit8 libkadm5srv-mit8 libkdb5-6
          libkrb5-dev libldap2-dev librtmp-dev libsigsegv2 libtag1-dev m4
        Suggested packages:
          autoconf2.13 autoconf-archive gnu-standards autoconf-doc automake1.9-doc krb5-doc libasound2-doc
          libcurl4-doc libcurl3-dbg krb5-user
        Recommended packages:
          automake automaken
        The following NEW packages will be installed:
          autoconf automake1.9 comerr-dev krb5-multidev libasound2-dev libcurl4-gnutls-dev libflac-dev libgssrpc4
          libid3tag0-dev libidn11-dev libkadm5clnt-mit8 libkadm5srv-mit8 libkdb5-6 libkrb5-dev libldap2-dev
          libmad0-dev libmodplug-dev libmpcdec-dev libresid-builder-dev librtmp-dev libsamplerate0-dev
          libsidplay2-dev libsidutils-dev libsigsegv2 libsndfile1-dev libspeex-dev libtag1-dev libtagc0-dev
          libwavpack-dev m4
        0 upgraded, 30 newly installed, 0 to remove and 16 not upgraded.
        Need to get 6,250 kB of archives.
        After this operation, 16.9 MB of additional disk space will be used.
        ....
        </code></pre>
    - Check alas-base and alas-utils
        <pre><code>[marslo@MarsloJiao ~]
        $ dpkg -l alsa-base
        Desired=Unknown/Install/Remove/Purge/Hold
        | Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
        |/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
        ||/ Name                 Version         Architecture    Description
        +++-====================-===============-===============-==============================================
        ii  alsa-base            1.0.25+dfsg-0ub all             ALSA driver configuration files
        [marslo@MarsloJiao ~]
        $ dpkg -l alsa-utils
        Desired=Unknown/Install/Remove/Purge/Hold
        | Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
        |/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
        ||/ Name                 Version         Architecture    Description
        +++-====================-===============-===============-==============================================
        ii  alsa-utils           1.0.27.1-1ubunt i386            Utilities for configuring and using ALSA
        </code></pre>

##Screenshot
### BASH
![BASH](https://github.com/Marslo/LinuxStuff/blob/master/Screenshots/BASH_Screenshot.png?raw=true)

### MAN Page
![MAN_PAGE](https://github.com/Marslo/LinuxStuff/blob/master/Screenshots/Colorful_ManPage_Screenshot.png?raw=true)
### tig
![tig](https://github.com/Marslo/LinuxStuff/blob/master/Screenshots/tig.png?raw=true)
