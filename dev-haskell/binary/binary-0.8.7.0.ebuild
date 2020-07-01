# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binary serialisation for Haskell values using lazy ByteStrings"
HOMEPAGE="https://github.com/kolmodin/binary"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.8
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	test? ( >=dev-haskell/base-orphans-0.8.1 <dev-haskell/base-orphans-0.9
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.9
		>=dev-haskell/random-1.0.1.0
		dev-haskell/test-framework
		>=dev-haskell/test-framework-quickcheck2-0.3 )
"

CABAL_CORE_LIB_GHC_PV="PM:8.8.1 PM:8.8.2 PM:8.8.3 PM:8.10.1_alpha1 PM:8.10.1_alpha1 PM:9999"
