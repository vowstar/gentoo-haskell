# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell library for the Microsoft Language Server Protocol, data types"
HOMEPAGE="https://github.com/haskell/lsp"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-2.1.1.0-disable-generator-exe.patch"
)

# Without this, './setup haddock' fails when calculating transient dependencies
# Should be fixed in Cabal-3.10 (https://github.com/haskell/cabal/issues/1919)
CABAL_HADDOCK_TARGETS="lib:${CABAL_PN}"

RDEPEND="
	>=dev-haskell/aeson-2:=[profile?] <dev-haskell/aeson-2.3
	>=dev-haskell/data-default-0.7:=[profile?] <dev-haskell/data-default-0.8
	>=dev-haskell/diff-0.4:=[profile?] <dev-haskell/diff-0.6
	>=dev-haskell/dlist-1.0:=[profile?] <dev-haskell/dlist-1.1
	>=dev-haskell/file-embed-0.0.15:=[profile?] <dev-haskell/file-embed-0.1
	dev-haskell/generic-arbitrary
	>=dev-haskell/hashable-1.4:=[profile?] <dev-haskell/hashable-1.5
	>=dev-haskell/indexed-traversable-0.1:=[profile?] <dev-haskell/indexed-traversable-0.2
	>=dev-haskell/indexed-traversable-instances-0.1:=[profile?] <dev-haskell/indexed-traversable-instances-0.2
	>=dev-haskell/lens-5.1:=[profile?] <dev-haskell/lens-5.3
	>=dev-haskell/lens-aeson-1.2:=[profile?] <dev-haskell/lens-aeson-1.3
	>=dev-haskell/mod-0.2:=[profile?] <dev-haskell/mod-0.3
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7
	>=dev-haskell/prettyprinter-1.7:=[profile?] <dev-haskell/prettyprinter-1.8
	dev-haskell/quickcheck:=[profile?]
	dev-haskell/quickcheck-instances:=[profile?]
	>=dev-haskell/row-types-1.0:=[profile?] <dev-haskell/row-types-1.1
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4
	>=dev-haskell/some-1.0:=[profile?] <dev-haskell/some-1.1
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2.2
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hspec
	)
"
