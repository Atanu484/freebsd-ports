PORTNAME?=	arcanist
PORTVERSION?=	2025.18
PORTEPOCH?=	1
CATEGORIES?=	devel
PKGNAMEPREFIX=	phorgeit-
PKGNAMESUFFIX=	${SLAVE_PKGNAMESUFFIX}${PHP_PKGNAMESUFFIX}

MAINTAINER=	grembo@FreeBSD.org
COMMENT?=	Libraries for the command line interface for Phorge.it
WWW?=		https://we.phorge.it/book/arcanist/

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		php:cli,flavors python:env shebangfix
USE_GITHUB=	yes
GH_ACCOUNT=	phorgeit
USE_PHP=	curl dom simplexml zlib
IGNORE_WITH_PHP=	84 85

PHP_DESTDIR=	lib/php/arcanist
SHEBANG_FILES=	bin/arc bin/phage scripts/*.php scripts/hgdaemon/*.php \
		src/parser/*.php support/arcanoid/arcanoid.py support/lib/*.php \
		support/unit/*.php support/xhpast/*.php \
		support/xhpast/bin/*.php

NO_ARCH=	yes
NO_BUILD=	yes
SLAVEPORT?=	lib

PLIST=		${.CURDIR}/pkg-plist

.if ${SLAVEPORT} == lib
SLAVE_PKGNAMESUFFIX=	-${SLAVEPORT}

OPTIONS_DEFINE=		ENCODINGS
OPTIONS_DEFAULT=	ENCODINGS
ENCODINGS_DESC=		Support for encodings other than utf-8
ENCODINGS_USE=		PHP=mbstring

.else # link only

RUN_DEPENDS=	phorgeit-arcanist-lib${PHP_PKGNAMESUFFIX}>0:devel/phorgeit-arcanist-lib@${PHP_FLAVOR}

CONFLICTS=	arc arcanist-php?? phorgeit-arcanist-php??

PLIST_FILES=	bin/arc

.endif

do-install:
.if ${SLAVEPORT} == bin
	${RLN} ../${PHP_DESTDIR}/bin/arc ${STAGEDIR}${PREFIX}/bin/arc
.else
	@${MKDIR} ${STAGEDIR}${PREFIX}/${PHP_DESTDIR}
	cd ${WRKSRC} ; ${PAX} -rw * ${STAGEDIR}${PREFIX}/${PHP_DESTDIR}
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/bash-completion/completions/
	@${REINPLACE_CMD} \
		's|%%PREFIX%%|${PREFIX}|g; \
		 s|%%PHP_DESTDIR%%|${PHP_DESTDIR}|g' \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/support/shell/hooks/bash-completion.sh
	@${REINPLACE_CMD} \
		's|%%PKGNAME%%|${PKGNAMEPREFIX}${PORTNAME}${PKGNAMESUFFIX}|g; \
		 s|%%PKGVERSION%%|${PKGVERSION}|g; \
		 s|%%PKGORIGIN%%|${PKGORIGIN}|g' \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/toolset/workflow/ArcanistVersionWorkflow.php
	@${REINPLACE_CMD} \
		's|%%PHP_CMD%%|${PREFIX}/bin/php|g' \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/lint/linter/ArcanistPhpLinter.php \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/moduleutils/PhutilLibraryMapBuilder.php \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/phage/bootloader/PhagePHPAgentBootloader.php \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/runtime/ArcanistRuntime.php \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/utils/PhutilExecutionEnvironment.php \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/workflow/ArcanistLiberateWorkflow.php
	@${REINPLACE_CMD} \
		's|%%PYTHON_CMD%%|${PYTHON_CMD}|g' \
		${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/src/workflow/ArcanistAnoidWorkflow.php
	${RLN} ${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/support/shell/hooks/bash-completion.sh \
		 ${STAGEDIR}${PREFIX}/share/bash-completion/completions/arc
	${RM} ${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/resources/ssl/default.pem
	@${FIND} ${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/ -name '*.bak' -delete -o -name '*.orig' -delete
	${STAGEDIR}${PREFIX}/${PHP_DESTDIR}/bin/arc shell-complete --generate
.endif

.include <bsd.port.mk>
