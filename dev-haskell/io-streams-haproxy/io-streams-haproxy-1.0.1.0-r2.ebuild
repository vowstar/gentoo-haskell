# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="3"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="HAProxy protocol 1.5 support for io-streams"
HOMEPAGE="https://snapframework.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/attoparsec-0.7:=[profile?]
	>=dev-haskell/io-streams-1.3:=[network,profile?] <dev-haskell/io-streams-1.6:=[network,profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.7 <dev-haskell/test-framework-hunit-0.4 )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${CABAL_DISTFILE}" "${CABAL_FILE}" || die

	# Convert to unix line endings
	dos2unix "${CABAL_FILE}" || die

	# Apply patches *after* pulling the revised cabal
	default

	cabal_chdeps \
		'attoparsec        >= 0.7 && < 0.14' 'attoparsec >=0.7' \
		'base              >= 4.5 && < 4.15' 'base >=4.5'
}
