# Contributor: Elia Notarangelo < elia dot notarangelo at gmail dot com>
# Maintainer: ale_xiovk < alexiobash at gmail dot com >

# Contributor: m1kc <m1kc@yandex.ru>
# Maintainer: m1kc <m1kc@yandex.ru>

pkgname=pacmind
pkgver=2.4m
pkgrel=1
pkgdesc="An yaourt GUI based on gtkdialog"
arch=('any')
url="http://www.xfce-italia.it/index.php?topic=636.0"
license=('GPL')
depends=('gtkdialog' 'zenity' 'yaourt' 'xterm' 'pkgbrowser' 'sudo')
optdepends=('yaourt-gui')
source=('Makefile'
        'pacmind' 'pacmind-lunch.sh'
        'COPYING'
        'pacmind.png' 'pacmind.svg'
        'pacmind.desktop'
        'de.po' 'en.po' 'fr.po' 'it.po'
        )

package() {
	cd $srcdir
	make DESTDIR=${pkgdir} install
}

md5sums=('849d9aef41ebfd4b036a72194df7bf28'
         'fe3293ab74940c87771cc583c4e65afa'
         '6f9a749eb385ddd3c538374041a323c5'
         '0636e73ff0215e8d672dc4c32c317bb3'
         'bdfa74f9777b0b156fe0a0a86f765d03'
         'abdef4e641c1c5e36c5a2caa4989033c'
         '01c5105b0ae248dbfc6fada21cb5da7d'
         'd69ac002f4a1e4ce0daf41ba958608f1'
         'ce1292be77d025d0649d6d9cbd4520cf'
         '1af1d016e113636b470a8267e5011772'
         '193f39c8398e5f6fb2c38fdaadc64b8e')
