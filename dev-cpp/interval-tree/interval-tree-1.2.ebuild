# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A C++ header only interval tree implementation."
HOMEPAGE="https://github.com/5cript/interval-tree"
LICENSE="CC0-1.0"

SLOT="0/$(ver_cut 1-2)"
KEYWORDS="~amd64"

SRC_URI="https://github.com/5cript/interval-tree/archive/refs/tags/${PV}.tar.gz -> interval-tree-${PV}.tar.gz"

src_compile() {
	einfo "Nothing to compile."
}

src_install() {
	insinto "/usr/include/interval-tree"
	doins "interval_tree_fwd.hpp"
	doins "interval_tree.hpp"
	doins "interval_types.hpp"

	dodoc "README.md"
}
