# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Authentication for Yesod."
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5[profile?]
		=dev-haskell/authenticate-1.2*[profile?]
		>=dev-haskell/blaze-html-0.4.1.3[profile?]
		<dev-haskell/blaze-html-0.5[profile?]
		=dev-haskell/hamlet-1.0*[profile?]
		=dev-haskell/http-conduit-1.4*[profile?]
		=dev-haskell/lifted-base-0.1*[profile?]
		>=dev-haskell/mime-mail-0.3[profile?]
		<dev-haskell/mime-mail-0.5[profile?]
		=dev-haskell/persistent-0.9*[profile?]
		=dev-haskell/persistent-template-0.9*[profile?]
		>=dev-haskell/puremd5-2.0[profile?]
		<dev-haskell/puremd5-2.2[profile?]
		>=dev-haskell/pwstore-fast-2.2[profile?]
		<dev-haskell/pwstore-fast-3[profile?]
		>=dev-haskell/random-1.0.0.2[profile?]
		<dev-haskell/random-1.1[profile?]
		>=dev-haskell/sha-1.4.1.3[profile?]
		<dev-haskell/sha-1.6[profile?]
		=dev-haskell/shakespeare-css-1.0*[profile?]
		>=dev-haskell/text-0.7[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		dev-haskell/unordered-containers[profile?]
		=dev-haskell/wai-1.2*[profile?]
		=dev-haskell/yesod-core-1.0*[profile?]
		=dev-haskell/yesod-form-1.0*[profile?]
		=dev-haskell/yesod-json-1.0*[profile?]
		=dev-haskell/yesod-persistent-1.0*[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6.0"
