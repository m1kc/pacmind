# Contributor: Elia Notarangelo < elia dot notarangelo at gmail dot com>
# Maintainer: ale_xiovk < alexiobash at gmail dot com >

# Contributor: m1kc <m1kc@yandex.ru>
# Maintainer: m1kc <m1kc@yandex.ru>

pkgname=pacmind
pkgver=2.5
pkgrel=1
pkgdesc="An yaourt GUI based on gtkdialog"
arch=('any')
url="https://github.com/m1kc/pacmind"
license=('GPL')
depends=('gtkdialog' 'zenity' 'yaourt' 'xterm' 'pkgbrowser' 'sudo')
optdepends=('yaourt-gui')
source=('Makefile'
        'pacmind' 'pacmind-lunch.sh'
        'COPYING'
        'pacmind.png' 'pacmind.svg'
        'pacmind.desktop'
        'de.po' 'en.po' 'fr.po' 'it.po' 'ru.po'
        )

package() {
	cd $srcdir
	make DESTDIR=${pkgdir} install
}

md5sums=('849d9aef41ebfd4b036a72194df7bf28'
         'fe3293ab74940c87771cc583c4e65afa'
         '422c3aefb3b9ab5d7399825a45c1dd02'
         '0636e73ff0215e8d672dc4c32c317bb3'
         'bdfa74f9777b0b156fe0a0a86f765d03'
         'abdef4e641c1c5e36c5a2caa4989033c'
         '01c5105b0ae248dbfc6fada21cb5da7d'
         '41ed0b157c833cc63d6364fb81d133a9'
         'f3497ea07f59ef3cf6d36ca334d248d4'
         '77be280012c3faf3a01e038fe5a23cf3'
         '8c1c360638d569d0c9b9dcdd49f79214'
         'cb72336f4d634f2ee2c66200044c9027')

