TERMUX_PKG_HOMEPAGE=https://github.com/Yisus7u7/termux-lxqt-welcome
TERMUX_PKG_DESCRIPTION="A simple welcome app for termux-desktop-lxqt made in C++ and Qt"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@Yisus7u7 <dev.yisus@hotmail.com>"
TERMUX_PKG_VERSION=1.0.2
TERMUX_PKG_SRCURL=https://github.com/Yisus7u7/termux-lxqt-welcome/archive/refs/tags/termux-lxqt-welcome-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6fa2d27ad001702cddd99785fe986390bc46905a0bf03a471740876416afd138
TERMUX_PKG_DEPENDS="qt5-qtbase, qt5-qtsvg"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure(){
    "${TERMUX_PREFIX}/opt/qt/cross/bin/qmake" \
        -spec "${TERMUX_PREFIX}/lib/qt/mkspecs/termux-cross" PREFIX=${TERMUX_PREFIX}
}
