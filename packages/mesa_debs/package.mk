PKG_NAME="mesa_debs"
PKG_VERSION="3dbc1ef5f7539cdd477db9a8e64a9db0c3f73e1c"
PKG_SHA256="e7dc33cd1414de022027aff15447002b5092930ad6e56db6e26130d12527d739"
PKG_SOURCE_DIR="mesa_debs-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/raskhadafi/${PKG_NAME}"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm64 armhf"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Mesa libraies with Lima/Panfrost support."
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mesa
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mesa/*
	cp -r ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/* $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mesa
}

