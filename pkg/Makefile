PORTNAME=	cfg
PORTVERSION=	0.1.11
CATEGORIES=	sysutils
MASTER_SITES=	GH

MAINTAINER=	matias@pizarro.net
COMMENT=	Utility to version-control machine configurations
WWW=		https://github.com/matias-pizarro/cfg/

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	matias-pizarro

NO_ARCH=	yes
NO_BUILD=	yes

RUN_DEPENDS=	git>=0:devel/git

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cfg ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/cfg.conf.sample ${STAGEDIR}${DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/host.gitignore.sample ${STAGEDIR}${DATADIR}
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.8 \
		${STAGEDIR}${PREFIX}/share/man/man8/

.include <bsd.port.mk>
