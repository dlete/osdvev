sudo apt update
sudo apt-get install \
    gcc \
    binutils \
    tree \
    qemu \
    gdb \
    make \
    nasm \
    git \
    gdisk \
    fdisk \
    dosfstools \
    e2fsprogs \
    parted \
    -y \
#sudo apt dist-upgrade -y
sudo apt clean
sudo apt autoclean
#    ld \ part of binutils
#   gnumakefile \ does not exist, in https://ubuntuforums.org/showthread.php?t=2459075
#   sgdisk \ does not exist, in https://manpages.ubuntu.com/manpages/xenial/man8/sgdisk.8.html
# mkfs.fat
#     mkfs.ext2 \
# partprobe \
