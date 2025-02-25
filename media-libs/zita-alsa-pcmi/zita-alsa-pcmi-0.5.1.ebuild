# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Provides easy access to ALSA PCM devices"
HOMEPAGE="http://kokkinizita.linuxaudio.org/linuxaudio/"
SRC_URI="http://kokkinizita.linuxaudio.org/linuxaudio/downloads/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ia64 ~ppc ~ppc64 ~riscv ~sparc ~x86"
IUSE=""

CDEPEND="media-libs/alsa-lib"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

DOCS=( AUTHORS COPYING README )

PATCHES=(
	"${FILESDIR}/${PN}-0.3.2-Makefile.patch"
)

src_compile() {
	tc-export CXX
	cd "${S}"/source || "Failed to cd to sources dir"
	emake PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)"
}

src_install() {
	default
	cd "${S}"/source || "Failed to cd to sources dir"
	emake PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)" DESTDIR="${D}" install
}
