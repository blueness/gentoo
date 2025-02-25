# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson systemd udev

DESCRIPTION="NVM-Express user space tooling for Linux"
HOMEPAGE="https://github.com/linux-nvme/nvme-cli"
SRC_URI="https://github.com/linux-nvme/nvme-cli/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="test"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~loong ~ppc64 ~riscv ~x86"
IUSE="hugepages +json +uuid"

RDEPEND="
	>=sys-libs/libnvme-1.1:=[json=,uuid=]
	hugepages? ( sys-libs/libhugetlbfs:= )
	json? ( dev-libs/json-c:= )
	uuid? ( sys-apps/util-linux:= )"

DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

src_configure() {
	local unitdir="$(systemd_get_systemunitdir)"
	local emesonargs=(
		-Dsystemddir=${unitdir%/system}
		-Dudevrulesdir=${EPREFIX}$(get_udevdir)
	)
	meson_src_configure
}
