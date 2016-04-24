# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal versionator

DESCRIPTION="Code Coverage Library for Haskell"
HOMEPAGE="http://hackage.haskell.org/package/hpc"
#SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
SRC_URI="http://dev.gentoo.org/~gienah/snapshots/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
#KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-lang/ghc-8.0.0:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
CABAL_CORE_LIB_GHC_PV="PM:8.0.1_rc2"
