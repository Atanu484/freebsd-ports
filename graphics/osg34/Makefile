PORTNAME=	osg
PORTVERSION=	3.4.1
DISTVERSIONPREFIX=	OpenSceneGraph-
PORTREVISION=	64
CATEGORIES=	graphics
PKGNAMESUFFIX=	34

MAINTAINER=	ports@FreeBSD.org
COMMENT=	C++ OpenGL scene graph library for real-time rendering
WWW=		https://www.openscenegraph.org/

LICENSE=	OSGPL
LICENSE_NAME=	OpenSceneGraph Public License
LICENSE_FILE=	${WRKSRC}/LICENSE.txt
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

DEPRECATED=	Obsolete version released in 2015
EXPIRATION_DATE=2025-09-10

LIB_DEPENDS=	libpng.so:graphics/png \
		libtiff.so:graphics/tiff

USES=		alias cmake compiler:c++11-lang gl jpeg localbase pkgconfig xorg
USE_CXXSTD=	c++14
USE_GITHUB=	yes
GH_ACCOUNT=	openscenegraph
GH_PROJECT=	OpenSceneGraph
USE_GL=		gl glu
USE_LDCONFIG=	yes
USE_XORG=	x11

# needed to ensure build on gcc-based archs; harmless otherwise
CXXFLAGS+=	-Wno-narrowing -I${LOCALBASE}/include/Imath -DInt64=uint64_t

CONFLICTS_INSTALL=osg

PORTSCOUT=	limitw:1,even

PLIST_SUB=	OSG_VERSION=${PORTVERSION} \
		OSG_SHLIBVER=131 \
		OPENTHREADS_VERSION=3.3.0 \
		OPENTHREADS_SHLIBVER=20

OPTIONS_DEFINE=	CURL FFMPEG FREETYPE GDAL GIF GSTREAMER GTA \
		JASPER LIBLAS LUA NVTT OPENEXR PDF QT5 SDL \
		SVG VNC XINE XRANDR
OPTIONS_DEFAULT=FFMPEG FREETYPE GIF XRANDR
OPTIONS_SUB=	yes

GDAL_DESC=	GDAL support
GTA_DESC=	GTA file format support
LIBLAS_DESC=	liblas support
NVTT_DESC=	Use NVidia texture tools
SDL_DESC=	Use SDL (joystick support in present3d)
VNC_DESC=	LibVNCServer support

CURL_LIB_DEPENDS=	libcurl.so:ftp/curl
CURL_VARS=		FORCE_REQUIRE+=CURL
CURL_VARS_OFF=		FORCE_IGNORE+=CURL
FFMPEG_LIB_DEPENDS=	libavcodec.so.58:multimedia/ffmpeg4
FFMPEG_VARS=		FORCE_REQUIRE+=FFmpeg
FFMPEG_VARS_OFF=	FORCE_IGNORE+=FFmpeg
FREETYPE_LIB_DEPENDS=	libfreetype.so:print/freetype2
FREETYPE_VARS=		FORCE_REQUIRE+=Freetype
FREETYPE_VARS_OFF=	FORCE_IGNORE+=Freetype
GDAL_LIB_DEPENDS=	libgdal.so:graphics/gdal
GDAL_VARS=		FORCE_REQUIRE+=GDAL
GDAL_VARS_OFF=		FORCE_IGNORE+=GDAL
GIF_LIB_DEPENDS=	libgif.so:graphics/giflib
GIF_VARS=		FORCE_REQUIRE+=GIFLIB
GIF_VARS_OFF=		FORCE_IGNORE+=GIFLIB
GSTREAMER_USES=		gstreamer
GSTREAMER_USE=		GNOME=glib20
GSTREAMER_VARS=		FORCE_REQUIRE+=GStreamer
GSTREAMER_VARS_OFF=	FORCE_IGNORE+=GStreamer
GTA_LIB_DEPENDS=	libgta.so:devel/libgta
GTA_VARS=		FORCE_REQUIRE+=GTA
GTA_VARS_OFF=		FORCE_IGNORE+=GTA
JASPER_LIB_DEPENDS=	libjasper.so:graphics/jasper
JASPER_VARS=		FORCE_REQUIRE+=Jasper
JASPER_VARS_OFF=	FORCE_IGNORE+=Jasper
LIBLAS_LIB_DEPENDS=	liblas.so:devel/liblas
LIBLAS_VARS=		FORCE_REQUIRE+=LIBLAS
LIBLAS_VARS_OFF=	FORCE_IGNORE+=LIBLAS
LUA_USES=		lua:52
LUA_CMAKE_ON=		-DOSG_USE_LOCAL_LUA_SOURCE:BOOL=OFF
LUA_VARS=		FORCE_IGNORE+=Lua51 FORCE_REQUIRE+=Lua52
LUA_VARS_OFF=		FORCE_IGNORE+="Lua51 Lua52"
NVTT_LIB_DEPENDS=	libnvtt.so:graphics/nvidia-texture-tools
NVTT_VARS=		FORCE_REQUIRE+=NVTT
NVTT_VARS_OFF=		FORCE_IGNORE+=NVTT
OPENEXR_LIB_DEPENDS=	libOpenEXR.so:graphics/openexr libImath.so:math/Imath
OPENEXR_VARS=		FORCE_REQUIRE+=OpenEXR
OPENEXR_VARS_OFF=	FORCE_IGNORE+=OpenEXR
PDF_LIB_DEPENDS=	libpoppler-glib.so:graphics/poppler-glib
PDF_USE=		gnome=cairo
PDF_VARS=		FORCE_REQUIRE+=Poppler-glib
PDF_VARS_OFF=		FORCE_IGNORE+=Poppler-glib
QT5_USES=		qt:5
QT5_USE=		qt=buildtools:build,core,gui,opengl,qmake:build,webkit,widgets
QT5_CMAKE_ON=		-DDESIRED_QT_VERSION=5
QT5_VARS=		FORCE_REQUIRE+="Qt5Widgets Qt5WebKitWidgets"
QT5_VARS_OFF=		FORCE_IGNORE+="Qt5Widgets Qt5WebKitWidgets"
SDL_USES=		sdl
SDL_USE=		sdl=sdl
SDL_VARS=		FORCE_REQUIRE+=SDL
SDL_VARS_OFF=		FORCE_IGNORE+=SDL
SVG_USES=		gnome
SVG_USE=		gnome=cairo,librsvg2
SVG_VARS=		FORCE_REQUIRE+=RSVG
SVG_VARS_OFF=		FORCE_IGNORE+=RSVG
VNC_LIB_DEPENDS=	libvncserver.so:net/libvncserver
VNC_VARS=		FORCE_REQUIRE+=LibVNCServer
VNC_VARS_OFF=		FORCE_IGNORE+=LibVNCServer
XINE_LIB_DEPENDS=	libxine.so:multimedia/libxine
XINE_VARS=		FORCE_REQUIRE+=Xine
XINE_VARS_OFF=		FORCE_IGNORE+=Xine
XRANDR_USE=		xorg=xrandr
XRANDR_CMAKE_ON=	-DOSGVIEWER_USE_XRANDR:BOOL=ON
XRANDR_CMAKE_OFF=	-DOSGVIEWER_USE_XRANDR:BOOL=OFF

# GUI toolkits are only needed for building examples, which are not even installed
FORCE_IGNORE=	FLTK GLUT FOX Qt3 wxWidgets OpenAL GtkGl SDL2	# only for examples
FORCE_IGNORE+=	COLLADA Performer OurDCMTK XUL FBX		# not in ports
FORCE_IGNORE+=	OpenVRML					# ports version too old
FORCE_IGNORE+=	ITK						# ports version doesn't build on 10.x
FORCE_REQUIRE=	Threads OpenGL X11 JPEG PNG TIFF ZLIB		# common & lightweight

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MQT5}
CMAKE_ARGS+=		-DOSG_USE_QT:BOOL=ON
PLIST_SUB+=		QT=""
.else
CMAKE_ARGS+=		-DOSG_USE_QT:BOOL=OFF
PLIST_SUB+=		QT="@comment "
.endif

post-patch:
	@${FIND} ${WRKSRC}/CMakeModules -type f -print0 | ${XARGS} -0 \
		${REINPLACE_CMD} -e 's|/usr/local|${LOCALBASE}|g'
	@${REINPLACE_CMD} -e '/FIND_LIBRARY.*DL_LIBRARY/ d' \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${PATCH_WRKSRC}/CMakeModules/FindFFmpeg.cmake
.for p in ${FORCE_REQUIRE}
	@${REINPLACE_CMD} -e '/FIND_PACKAGE.*${p}/ s|)$$| REQUIRED&|' \
		${WRKSRC}/CMakeLists.txt
.endfor
.for p in ${FORCE_IGNORE}
	@${REINPLACE_CMD} -e '/FIND_PACKAGE.*${p}/ s|^|#|' \
		${WRKSRC}/CMakeLists.txt
.endfor

.include <bsd.port.mk>
