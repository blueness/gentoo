# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fast logging system"
HOMEPAGE="https://github.com/kazu-yamamoto/logger"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/auto-update-0.1.2:=[profile?]
	>=dev-haskell/easy-file-0.2:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	>=dev-haskell/unix-time-0.4.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec )
"
