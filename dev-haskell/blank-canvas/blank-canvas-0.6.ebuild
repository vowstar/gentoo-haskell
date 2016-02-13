# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HTML5 Canvas Graphics Library"
HOMEPAGE="https://github.com/ku-fpg/blank-canvas/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # uses browser

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	>=dev-haskell/base-compat-0.8.1:=[profile?] <dev-haskell/base-compat-1:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/colour-2.2:=[profile?] <dev-haskell/colour-3.0:=[profile?]
	>=dev-haskell/data-default-class-0.0:=[profile?] <dev-haskell/data-default-class-0.1:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/kansas-comet-0.4:=[profile?] <dev-haskell/kansas-comet-0.5:=[profile?]
	>=dev-haskell/mime-types-0.1.0.3:=[profile?] <dev-haskell/mime-types-0.2:=[profile?]
	>=dev-haskell/scotty-0.10:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-show-2:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/wai-3:=[profile?] <dev-haskell/wai-4:=[profile?]
	>=dev-haskell/wai-extra-3.0.1:=[profile?] <dev-haskell/wai-extra-3.1:=[profile?]
	>=dev-haskell/warp-3:=[profile?] <dev-haskell/warp-4:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/shake-0.13 )
"

src_prepare() {
	cabal_chdeps \
		'text-show          >= 2       && < 2.2' 'text-show          >= 2' \
		'scotty             >= 0.10    && < 0.11' 'scotty             >= 0.10'
}
