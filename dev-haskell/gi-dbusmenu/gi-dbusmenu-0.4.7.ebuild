# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dbusmenu bindings"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/gi-glib-2.0:=[profile?] <dev-haskell/gi-glib-2.1:=[profile?]
	>=dev-haskell/gi-gobject-2.0:=[profile?] <dev-haskell/gi-gobject-2.1:=[profile?]
	>=dev-haskell/haskell-gi-0.23.0:=[profile?] <dev-haskell/haskell-gi-0.24:=[profile?]
	>=dev-haskell/haskell-gi-base-0.23:=[profile?] <dev-haskell/haskell-gi-base-0.24:=[profile?]
	<dev-haskell/haskell-gi-overloading-1.1:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	dev-libs/libdbusmenu
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	virtual/pkgconfig
"
