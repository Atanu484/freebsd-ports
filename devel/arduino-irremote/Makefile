PORTNAME=	arduino-irremote
PORTVERSION=	4.4.1
DISTVERSIONPREFIX=	v
CATEGORIES=	devel

MAINTAINER=	leres@FreeBSD.org
COMMENT=	Multi-protocol infrared remote library for the Arduino
WWW=		https://arduino-irremote.github.io/Arduino-IRremote/

LICENSE=	MIT

USES=		dos2unix
USE_GITHUB=	yes
GH_ACCOUNT=	Arduino-IRremote
GH_PROJECT=	Arduino-IRremote
PORTSCOUT=	limit:^[0-9]

NO_BUILD=	yes

RELPATH=	arduino/libraries/IRremote

DATADIR=	${PREFIX}/${RELPATH}
PORTDATA=	*
PORTEXAMPLES=	*

OPTIONS_DEFINE=	EXAMPLES

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${RELPATH}
	cd ${WRKSRC}/src && ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/${RELPATH}
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
