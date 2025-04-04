# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: buildexamples:examples

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell Digital Signal Processing"
HOMEPAGE="https://www.haskell.org/haskellwiki/DSP"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

RDEPEND=">=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples)
}
