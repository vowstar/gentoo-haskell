# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dhall to Nix compiler"
HOMEPAGE="http://hackage.haskell.org/package/dhall-nix"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/data-fix-0.1:=[profile?]
	>=dev-haskell/dhall-1.0.1:=[profile?] <dev-haskell/dhall-1.1:=[profile?]
	>=dev-haskell/hnix-0.3.4:=[profile?] <dev-haskell/hnix-0.4:=[profile?]
	<dev-haskell/neat-interpolation-0.4:=[profile?]
	>=dev-haskell/optparse-generic-1.1.1:=[profile?] <dev-haskell/optparse-generic-1.2:=[profile?]
	>=dev-haskell/text-0.8.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/trifecta-1.0:=[profile?] <dev-haskell/trifecta-1.7:=[profile?]
	>=dev-haskell/vector-0.3:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
