<%@ page import="org.springframework.context.i18n.LocaleContextHolder" %>
<%@ page import="grails.util.Environment" %>

<header class="header">
    <g:set var="locale" value="${LocaleContextHolder.getLocale().toString()}" />

    <a class="elurikkus-menu__brand" href="${grailsApplication.config.serverRoot}/${locale == 'en' ? 'en' : ''}">
        <img src="${grailsApplication.config.serverRoot}/assets/images/elurikkus_logo.svg" class="logo" alt="logo" />
    </a>

    <script>
        var GLOBAL_LOCALE_CONF = {
            locale: "${locale}",
            contextPath: "${request.contextPath}"
        };
    </script>

    <%--
        Global site tag (gtag.js) - Google Analytics
        This is not the correct location for Google Analytics, but it will do
        until we decide to move it to its rightful place.
    --%>
    <g:if test="${Environment.current.name == "production"}">
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-108395336-1"></script>

        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-108395336-1');
        </script>
    </g:if>

    <g:set var="recentRecords" value="${grailsApplication.config.serverRoot}/generic-hub/occurrences/search?dir=desc&sort=occurrence_date&fq=&pageSize=20" />
    <g:set var="speciesSearch" value="${grailsApplication.config.serverRoot}/bie-hub/search/" />
    <g:set var="checklistsSearch" value="${grailsApplication.config.serverRoot}/lists/" />
    <g:set var="regionsLink" value="${grailsApplication.config.serverRoot}/regions/" />
    <g:set var="collectoryLink" value="${grailsApplication.config.serverRoot}/collectory/" />
    <g:set var="datasetsLink" value="${grailsApplication.config.serverRoot}/collectory/public/datasets/" />
    <g:set var="speciesSearch" value="${grailsApplication.config.serverRoot}/bie-hub/search/" />

    <nav class="menu">
        <div class="menu-addon">
            <g:message code="menu.addon.text" />
        </div>

        <div class="submenu">
            <div class="submenu__title">
                <a href="${speciesSearch}" class="submenu__title-link">
                    <g:message code="menu.species.label" />
                </a>
            </div>
        </div>

        <div class="submenu">
            <div class="submenu__title">
                <a href="${checklistsSearch}" class="submenu__title-link">
                    <g:message code="menu.lists.label" />
                </a>
            </div>
        </div>

        <div class="submenu">
            <div class="submenu__title">
                <a href="${regionsLink}" class="submenu__title-link">
                    <g:message code="menu.regions.label" />
                </a>
            </div>
        </div>

        <div class="submenu">
            <div class="submenu__title">
                <a href="${collectoryLink}" class="submenu__title-link">
                    <g:message code="menu.collections.label" />
                </a>
            </div>
        </div>

        <div class="submenu">
            <div class="submenu__title">
                <a href="${datasetsLink}" class="submenu__title-link">
                    <g:message code="menu.datasets.label" />
                </a>
            </div>
        </div>

        <div class="submenu">
            <div class="submenu__title">
                <a href="${recentRecords}" class="submenu__title-link">
                    <g:message code="menu.records.label" />
                </a>
            </div>
        </div>
    </nav>

    <nav class="burger">
        <button type="button" id="burger-open" class="burger__open-button">
            <span class="fa fa-bars">
            </span>
        </button>

        <div id="burger-popup" class="burger__popup">
            <div class="burger__popup-content">
                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="${speciesSearch}" class="burger__link">
                            <g:message code="menu.species.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="${checklistsSearch}" class="burger__link">
                            <g:message code="menu.lists.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="${regionsLink}" class="burger__link">
                            <g:message code="menu.regions.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="${collectoryLink}" class="burger__link">
                            <g:message code="menu.collections.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="${datasetsLink}" class="burger__link">
                            <g:message code="menu.datasets.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="${recentRecords}" class="burger__link">
                            <g:message code="menu.records.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-contents">
                        <div class="burger__submenu-entry">
                            <localeSwitcher:localeButton uri="${request.forwardURI}" styleClass="burger__link" />
                        </div>
                    </div>
                </div>
            </div>

            <button id="burger-close" class="burger__close-button">
                ✕
            </button>
        </div>
    </nav>

    <nav id="language-nav">
        <div class="submenu">
            <div class="submenu__title">
                <localeSwitcher:localeButton uri="${request.forwardURI}" styleClass="submenu__title-link" />
            </div>
        </div>
    </nav>
</header>
