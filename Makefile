# Created by: Adrian Jaskuła <aj@laatu.uk>
# $FreeBSD$

PORTNAME=	mirthconnect
PORTVERSION=	3.4.2.8129.b167
CATEGORIES=	java net
MASTER_SITES=	http://downloads.mirthcorp.com/connect/${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-unix

MAINTAINER=	aj@laatu.uk
COMMENT=	Mirth Connect cross-platform HL7 interface engine

LICENSE=	MPL

USE_JAVA=	yes
JAVA_VERSION=	1.7+

NO_ARCH=	yes
NO_BUILD=	yes
NO_TEST=	yes

WRKSRC=	${WRKDIR}/Mirth\ Connect/

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PORTNAME}
	cd ${WRKSRC}; ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/mcservice ${STAGEDIR}${PREFIX}/bin$

.include <bsd.port.mk>
