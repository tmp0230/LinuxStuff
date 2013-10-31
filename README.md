LinuxStuff
==========
The config and scripts in Linux

## Version:
Author: Marslo   
Email: marslo.vida@gmail.com   
Created: 2013-10-07 21:43:42   
Version: 0.0.1   
LastChange: 2013-10-15 22:58:34
History:   
        0.0.1 | Marslo | init   

## HOME config usage:
- Add the following statement in `.bashrc` or `/etc/bashrc`(RHEL/CentOS) or `/etc/bash.bashrc`(Ubunut) :
<pre><code>source PATH_OF_alias_marslo/.alias_marslo[_ubuntu]
</code></pre>
- inputrc:
    Add the **.inputrc** in `$HOME`
- The vim in github: 
<pre><code>$ git clone git@github.com:b4winckler/vim.git
</code></pre>

## ALSA Settings:
### Informations
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

### Install extra libs (ubuntu 13.04)
<pre><code>$ sudo apt-get install build-essential ncurses-dev gettext  libncursesw5-dev
$ sudo apt-get install xmlto
</code></pre>

### Update ALSA in Ubuntu (<= 12.10)
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

### Change settings in Sound Card
- Input `alsamixer`, and input **[F6]** to select sound card:
<pre><code>$ alsamixer</code></pre>
![alsamixer](https://github.com/woainvzu/MarsloLinuxStuff/blob/master/Screenshots/alsamixer.png?raw=true)
- Startup Settings
<pre><code>Name£º [Everything_You_Want]
Command: /sbin/alsactl restore
</code></pre>

##Screenshot
#BASH
![BASH](https://github.com/woainvzu/BASH_Aalias_Marslo/blob/master/Screenshots/BASH_Screenshot.png?raw=true)
#MAN Page
![MAN_PAGE](https://github.com/woainvzu/BASH_Aalias_Marslo/blob/master/Screenshots/Colorful_ManPage_Screenshot.png?raw=true)
