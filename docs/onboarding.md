# Installation

Install packages
The package `ld`, the GNU Linker, is not a package on its own. The utility is part of the package `binutils`. Hence, you need to install `binutils` instead of `ld`.

The utility `gnumakefile` does not exist as such. See: in https://ubuntuforums.org/showthread.php?t=2459075 "In Xubuntu 20.10, /usr/bin/gmake is a symbolic link to /usr/bin/make. It's provided by the make package (along with the make command it points to)."

The utility `sgdisk` is not a package on its own. The utility is part of the package `gdisk` 
https://manpages.ubuntu.com/manpages/xenial/man8/sgdisk.8.html

The utility `mkfs.fat` is not a package on its own. The utility is part of  `dosfstools`. Ver. https://manpages.ubuntu.com/manpages/trusty/man8/mkfs.fat.8.html 

The utility `mkfs.ext2` is not a package on its own. The utility is part of  `e2fsprogs`. See https://manpages.ubuntu.com/manpages/xenial/man8/mkfs.ext4.8.html 

The utility `partprobe` is not a package on its own. The utility is part of  `parted`. See https://manpages.ubuntu.com/manpages/focal/en/man8/partprobe.8.html


Install the assembler
`sudo apt-get install nasm`

Verify `qemu` is installed
`bash
qemu-system-x86_64
`
and it should open a new window
`gtk initialization failed`
https://askubuntu.com/questions/1416544/im-unable-to-launch-qemu-after-installation
https://github.com/sickcodes/Docker-OSX/issues/517
https://askubuntu.com/questions/1389908/running-gui-apps-under-wsl
need to run as root
