# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Monad classes, using functional dependencies"
HOMEPAGE="https://github.com/haskell/mtl"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"

RDEPEND=">=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}"

CABAL_CORE_LIB_GHC_PV="PM:8.8.4-r1 PM:8.10.5-r1 PM:8.10.6 PM:8.10.7 PM:9.0.1-r1 PM:9.0.2-r1 PM:9999"
