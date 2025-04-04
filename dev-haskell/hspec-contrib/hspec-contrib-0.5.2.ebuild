# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Contributed functionality for Hspec"
HOMEPAGE="https://hspec.github.io/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # fails to build

RDEPEND="dev-haskell/call-stack:=[profile?]
	>=dev-haskell/hspec-core-2.5.0:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
# test? ( dev-haskell/hspec
# 		>=dev-haskell/hspec-core-2.6.0
# 		dev-haskell/quickcheck )
# "
