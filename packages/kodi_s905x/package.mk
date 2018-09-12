PKG_NAME="kodi_s905x"
PKG_VERSION="fdb75b0"
PKG_SHA256="d28f03ab4a2a2402317452ca2a90366f3e3c269dbcdc2b6016eb2bb6cbad6748"
PKG_SOURCE_DIR="kodi_s905x-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/kodi_s905x"
PKG_URL="https://github.com/numbqq/kodi_s905x/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Amlogic S905X Kodi package"
PKG_SOURCE_NAME="kodi_s905x-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="YES"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/kodi_s905x
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/kodi_s905x/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/kodi_s905x
}
