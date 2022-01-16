# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Qt Code Editor widget."
HOMEPAGE="https://github.com/justxi/QCodeEditor"
LICENSE="MIT"

SLOT="0/$(ver_cut 1-2)"
KEYWORDS="~amd64"

SRC_URI="https://github.com/justxi/QCodeEditor/archive/refs/tags/v${PV}.tar.gz -> QCodeEditor-${PV}.tar.gz"

DEPEND="dev-cpp/interval-tree"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
    local mycmakeargs=(
	-DTYPEOFLIBRARY=SHARED
    )
    cmake_src_configure
}
