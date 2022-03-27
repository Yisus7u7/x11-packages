TERMUX_PKG_HOMEPAGE=https://github.com/Yisus7u7/lxqt-composer-settings
TERMUX_PKG_DESCRIPTION="lxqt-composer-settings is an unofficial application to configure composition effects in LXQt."
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@Yisus7u7 <dev.yisus@hotmail.com>"
TERMUX_PKG_VERSION=1.0.0
TERMUX_PKG_SRCURL=https://github.com/Yisus7u7/lxqt-composer-settings/releases/download/${TERMUX_PKG_VERSION}/lxqt-composer-settings-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=5870850c0ab7c53ec3ad4fdb1558c9dd378b033799fecf966de98de28fb33f76
TERMUX_PKG_DEPENDS="qt5-qtbase, qt5-qtsvg, xcompmgr, picom"
TERMUX_PKG_RECOMMENDS="featherpad"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure(){
    "${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
        -spec "${TERMUX_PREFIX}/lib/qt/mkspecs/termux-cross" PREFIX=${TERMUX_PREFIX}
}
