PORTNAME=	haproxy
DISTVERSION=	3.2.3
CATEGORIES=	net www
MASTER_SITES=	http://www.haproxy.org/download/3.2/src/

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Reliable, high performance TCP/HTTP load balancer
WWW=		https://www.haproxy.org

LICENSE=	GPLv2 LGPL21
LICENSE_COMB=	multi

FLAVORS=	default lua wolfssl
FLAVOR?=	${FLAVORS:[1]}

USES=		compiler:c++11-lang cpe gmake
USE_RC_SUBR=	haproxy

default_CONFLICTS_INSTALL=	haproxy-lua haproxy-wolfssl
lua_CONFLICTS_INSTALL=		haproxy-devel haproxy-wolfssl
lua_PKGNAMESUFFIX=		-lua
wolfssl_CONFLICTS_INSTALL=	haproxy-devel haproxy-lua
wolfssl_PKGNAMESUFFIX=		-wolfssl

CONFLICTS_INSTALL=	haproxy haproxy24 haproxy26 haproxy28 haproxy30

ALL_TARGET=	all admin/halog/halog
MAKE_ARGS=	TARGET=freebsd DEFINE=-DFREEBSD_PORTS USE_GETADDRINFO=1 \
		USE_ZLIB=1 USE_CPU_AFFINITY=1 USE_ACCEPT4=1 \
		USE_TFO=1 USE_THREAD_DUMP=1 \
		CC="${CC}" DEBUG_CFLAGS="" CPU_CFLAGS="${CFLAGS}" \
		${MAKE_ARGS_${ARCH}}

MAKE_ARGS_i386=		USE_LIBATOMIC=
MAKE_ARGS_powerpc=	USE_LIBATOMIC=

OPTIONS_DEFINE=		DOCS EXAMPLES LUA DEVICEATLAS PROMEX
OPTIONS_RADIO=		PCRE SSL
OPTIONS_RADIO_PCRE=	DPCRE DPCRE2 SPCRE SPCRE2
OPTIONS_RADIO_SSL=	OPENSSL WOLFSSL
DPCRE_DESC=		Link pcre(1) dynamically
DPCRE2_DESC=		Link pcre2 dynamically
SPCRE_DESC=		Link pcre(1) statically
SPCRE2_DESC=		Link pcre2 statically
DEVICEATLAS_DESC=	DeviceAtlas Device Detection support
PROMEX_DESC=		Enable Prometheus exporter
OPTIONS_DEFAULT=	DPCRE2 PROMEX

DPCRE_LIB_DEPENDS=	libpcre.so:devel/pcre
DPCRE_MAKE_ARGS=	USE_PCRE=1 USE_PCRE_JIT=1
DPCRE2_LIB_DEPENDS=	libpcre2-8.so:devel/pcre2
DPCRE2_MAKE_ARGS=	USE_PCRE2=1 USE_PCRE2_JIT=1
SPCRE_BUILD_DEPENDS=	${LOCALBASE}/lib/libpcre.a:devel/pcre
SPCRE_MAKE_ARGS=	USE_PCRE=1 USE_STATIC_PCRE=1 USE_PCRE_JIT=1
SPCRE2_BUILD_DEPENDS=	${LOCALBASE}/lib/libpcre2-8.a:devel/pcre2
SPCRE2_MAKE_ARGS=	USE_PCRE2=1 USE_STATIC_PCRE2=1 USE_PCRE2_JIT=1
DEVICEATLAS_LIB_DEPENDS=	libda.so:net/deviceatlas-enterprise-c
DEVICEATLAS_MAKE_ARGS=		USE_DEVICEATLAS=1 DEVICEATLAS_LIB=${LOCALBASE}/lib DEVICEATLAS_INC=${LOCALBASE}/include
PROMEX_MAKE_ARGS=	USE_PROMEX=1
OPENSSL_USES=		ssl
OPENSSL_MAKE_ARGS=	USE_OPENSSL=1 SSL_LIB=${OPENSSLLIB} SSL_INC=${OPENSSLINC}
LUA_USES=		lua:53
LUA_MAKE_ARGS=		USE_LUA=1 LUA_INC=${LUA_INCDIR} LUA_LIB=${LUA_LIBDIR} LUA_LIB_NAME=lua-${LUA_VER}
WOLFSSL_LIB_DEPENDS=	libwolfssl.so:security/wolfssl
WOLFSSL_MAKE_ARGS=	USE_OPENSSL_WOLFSSL=1 USE_QUIC=1
WOLFSSL_CFLAGS=		-I${LOCALBASE}/include/wolfssl

.if ${FLAVOR:U} == lua
OPTIONS_DEFAULT+=	LUA
.endif

.if ${FLAVOR:U} == wolfssl
OPTIONS_DEFAULT+=	WOLFSSL
.else
OPTIONS_DEFAULT+=	OPENSSL
.endif

.include <bsd.port.pre.mk>

.if ${SSL_DEFAULT:Mlibressl*} || ${SSL_DEFAULT:M*quictls}
OPENSSL_MAKE_ARGS+=	USE_QUIC=1
.else
OPENSSL_MAKE_ARGS+=	USE_QUIC=1 USE_QUIC_OPENSSL_COMPAT=1
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/haproxy ${STAGEDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/admin/halog/halog ${STAGEDIR}${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/doc/haproxy.1 ${STAGEDIR}${PREFIX}/share/man/man1
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC}/doc/ && ${COPYTREE_SHARE} \* ${STAGEDIR}${DOCSDIR})
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	(cd ${WRKSRC}/examples/ && ${COPYTREE_SHARE} \* ${STAGEDIR}${EXAMPLESDIR})

.include <bsd.port.post.mk>
