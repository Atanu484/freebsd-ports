PORTNAME=	kate
DISTVERSION=	${KDE_APPLICATIONS_VERSION}
PORTREVISION=	4
CATEGORIES=	editors kde kde-applications

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Basic editor framework for the KDE system
WWW=		https://kate-editor.org/

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:textproc/docbook-xsl \
		docbook-xml>0:textproc/docbook-xml
LIB_DEPENDS=	libgit2.so:devel/libgit2

USES=		cmake compiler:c++11-lang desktop-file-utils gettext \
		pkgconfig kde:5 qt:5 tar:xz cpe xorg
USE_KDE=	activities attica auth bookmarks codecs completion config \
		configwidgets coreaddons crash dbusaddons \
		guiaddons i18n iconthemes init itemmodels itemviews \
		jobwidgets kio newstuff package parts plasma-framework \
		service solid sonnet syntaxhighlighting texteditor textwidgets \
		threadweaver wallet widgetsaddons windowsystem xmlgui \
		doctools:build ecm:build
USE_QT=		concurrent core dbus gui network script sql widgets xml \
		buildtools:build qmake:build testlib:build
USE_XORG=	x11

OPTIONS_DEFINE=	DOCS

.include <bsd.port.mk>
