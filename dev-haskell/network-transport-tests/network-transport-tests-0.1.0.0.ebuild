# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Unit tests for Network.Transport implementations"
HOMEPAGE="http://github.com/haskell-distributed/distributed-process"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/ansi-terminal-0.5*[profile?]
		=dev-haskell/mtl-2.1*[profile?]
		=dev-haskell/network-transport-0.3*[profile?]
		=dev-haskell/random-1.0*[profile?]
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	sed -e 's@base ==4.5.\*@base >=4.5 \&\& < 5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
