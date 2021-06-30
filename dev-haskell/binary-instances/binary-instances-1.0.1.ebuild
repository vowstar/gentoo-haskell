# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for binary"
HOMEPAGE="https://github.com/haskellari/binary-instances#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # Needs fix in ghc/text: https://github.com/haskell/text/issues/277

RDEPEND=">=dev-haskell/aeson-0.7.0.6:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/binary-orphans-1.0.1:=[profile?] <dev-haskell/binary-orphans-1.1:=[profile?]
	>=dev-haskell/case-insensitive-1.2.0.4:=[profile?] <dev-haskell/case-insensitive-1.2.2:=[profile?]
	>=dev-haskell/hashable-1.2.3.3:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/scientific-0.3.3.8:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.7.3:=[profile?] <dev-haskell/tagged-0.8.7:=[profile?]
	>=dev-haskell/text-1.2.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-binary-0.2.1.1:=[profile?] <dev-haskell/text-binary-0.3:=[profile?]
	>=dev-haskell/time-compat-1.9.4:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10.12.3:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/vector-binary-instances-0.2.1.0:=[profile?] <dev-haskell/vector-binary-instances-0.3:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2.13.1 <dev-haskell/quickcheck-2.15
		>=dev-haskell/quickcheck-instances-0.3.25 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.10.1.2 <dev-haskell/tasty-1.4
		>=dev-haskell/tasty-quickcheck-0.8.3.2 <dev-haskell/tasty-quickcheck-0.11 )
"

src_prepare() {
	default
	cabal_chdeps \
		'base                     >=4.6.0.1   && <4.15' 'base                     >=4.6.0.1'
}
