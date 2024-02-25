# Maintainer: Hamed Mahmoudkhani <ainyava@gmail.com>
pkgname=ainyava-app-configs-git
_destname1="/etc/skel/.config/"
pkgver=1.0.0
pkgrel=1
epoch=
pkgdesc="Ainyava customized app configurations"
arch=('any')
url="https://github.com/yavalinux/ainyava-app-configs"
license=('GPL3')
groups=()
depends=()
makedepends=('git')
checkdepends=()
optdepends=()
provides=("$pkgname=$pkgver")
conflicts=("$pkgname")
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname::git+$url.git")
noextract=()
sha256sums=('SKIP')
validpgpkeys=()

package() {
	install -dm755 ${pkgdir}${_destname1}
	cp -r  ${srcdir}/${pkgname}${_destname1}* ${pkgdir}${_destname1}
}
