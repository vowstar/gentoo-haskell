# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Automatic generation of record lenses for microlens"
HOMEPAGE="https://github.com/aelve/microlens"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+inlining"

RDEPEND=">=dev-haskell/microlens-0.4.0:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag inlining inlining)
}
