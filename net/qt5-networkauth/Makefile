PORTNAME=	networkauth
PORTVERSION=	${QT5_VERSION}${QT5_KDE_PATCH}
CATEGORIES=	net
PKGNAMEPREFIX=	qt5-

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt network auth module

USES=		compiler:c++11-lang perl5 qmake:no_env qt-dist:5
USE_PERL5=	extract
USE_QT=		core network \
		buildtools:build
USE_LDCONFIG=	${PREFIX}/${QT_LIBDIR_REL}

.include <bsd.port.mk>
