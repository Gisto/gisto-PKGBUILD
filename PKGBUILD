# Maintainer: Sasha Khamkov <sanusart@gmail.com>
pkgname=gisto
pkgver=0.3.0
pkgrel=2
epoch=
pkgdesc="Cross-platform gist snippets management desktop application that allows you and your team share code snippets fast and easily. Based on GitHub Gist Infrastructure which means you can use all your existing snippets by connecting your GitHub account."
arch=("i686" "x86_64")
url="http://www.gistoapp.com/"
license=("MIT")
groups=()
options=(!strip)
depends=("gconf" "ttf-ms-fonts")

_gisto_arch="x86"
_gisto_arch_name="i32"
[ "$CARCH" = "x86_64" ] && _gisto_arch="x86_64" && _gisto_arch_name="x64"

source=("http://download.gistoapp.com/Gisto-$pkgver-Linux_${_gisto_arch}.tar.gz")    

md5sums=('08b6eaa6ca5d8e843ce1ad6eb1f76c6f')
[ "$CARCH" = "x86_64" ] && md5sums[0]='5a8883a2a6678de78258c8fec0cb9ffb'

package() {

    printf "\n\n\n\e[43m  \e[0m INSTALLING...\n\n\n------------\n\n\n"

    printf "\e[43m  \e[0m CREATE PACKAGE STRUCTURE \n\n\n"
    mkdir -p $pkgdir/{opt,usr/bin}

    cp -R $srcdir/Gisto-$pkgver-linux_${_gisto_arch_name}/gisto $pkgdir/opt/
    cp -R $srcdir/Gisto-$pkgver-linux_${_gisto_arch_name}/share $pkgdir/usr/

    printf "\e[43m  \e[0m APPLY LIBUDEV FIX \n\n\n"

    mkdir -p $pkgdir/opt/gisto/lib
    ln -sf /usr/lib/libudev.so.1 $pkgdir/opt/gisto/lib/libudev.so.0

    printf "\e[43m  \e[0m CREATE GISTO SYSTEM LINK \n\n\n"

    ln -sf /opt/gisto/gisto $pkgdir/usr/bin/gisto

    printf "\e[43m  \e[0m DONE PREPARATIONS :) \n\n\n"

}
