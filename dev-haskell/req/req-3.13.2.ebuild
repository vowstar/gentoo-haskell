# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HTTP client library"
HOMEPAGE="https://github.com/mrkkrp/req"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/authenticate-oauth-1.5:=[profile?] <dev-haskell/authenticate-oauth-1.8:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/crypton-connection-0.2.2:=[profile?] <dev-haskell/crypton-connection-0.4:=[profile?]
	>=dev-haskell/http-api-data-0.2:=[profile?] <dev-haskell/http-api-data-0.7:=[profile?]
	>=dev-haskell/http-client-0.7.13.1:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.3.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-10:=[profile?]
	>=dev-haskell/modern-uri-0.3:=[profile?] <dev-haskell/modern-uri-0.4:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/retry-0.8:=[profile?] <dev-haskell/retry-0.10:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/unliftio-core-0.1.1:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	>=dev-lang/ghc-9.4.5:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.8.1.0
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3
		>=dev-haskell/hspec-core-2.0 <dev-haskell/hspec-core-3
		>=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
