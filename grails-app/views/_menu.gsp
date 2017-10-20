<%@ page import="org.springframework.context.i18n.LocaleContextHolder" %>

<header class="header" role="banner">
    <%-- XXX: Not the best place for this, but unless we make a layout to use for each module, there is no other --%>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700" rel="stylesheet" type="text/css" />

    <g:set var="locale" value="${LocaleContextHolder.getLocale().toString()}" />

    <a class="elurikkus-menu__brand" href="${grailsApplication.config.serverRoot}/${locale == 'en' ? 'en' : ''}">
        <img src="${grailsApplication.config.serverRoot}/assets/images/elurikkus_logo.svg" class="logo" />
    </a>

    <script>
        var GLOBAL_LOCALE_CONF = {
            locale: "${locale}",
            contextPath: "${request.contextPath}"
        }
    </script>

    <g:set var="recentRecords" value="${grailsApplication.config.serverRoot}/generic-hub/occurrences/search?dir=desc&sort=occurrence_date&fq=&pageSize=100" />
    <g:set var="speciesSearch" value="${grailsApplication.config.serverRoot}/bie-hub/search/" />
    <g:set var="checklistsSearch" value="${grailsApplication.config.serverRoot}/lists/" />
    <g:set var="regionsLink" value="${grailsApplication.config.serverRoot}/regions/" />
    <g:set var="collectoryLink" value="${grailsApplication.config.serverRoot}/collectory/" />
    <g:set var="datasetsLink" value="${grailsApplication.config.serverRoot}/collectory/public/datasets/" />
    <g:set var="speciesSearch" value="${grailsApplication.config.serverRoot}/bie-hub/search/" />

    <nav class="menu" role="navigation">
        <span class="submenu">
            <div class="submenu__title">
                <a href="${speciesSearch}" class="submenu__title-link" class="submenu__dropdown-link">
                    <g:message code="menu.species.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="${checklistsSearch}" class="submenu__title-link" class="submenu__dropdown-link">
                    <g:message code="menu.lists.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="${regionsLink}" class="submenu__title-link" class="submenu__dropdown-link">
                    <g:message code="menu.regions.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="${recentRecords}" class="submenu__title-link" class="submenu__dropdown-link">
                    <g:message code="menu.records.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="${collectoryLink}" class="submenu__title-link" class="submenu__dropdown-link">
                    <g:message code="menu.collections.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="${datasetsLink}" class="submenu__title-link">
                    <g:message code="menu.datasets.label" />
                </a>
            </div>
        </span>
    </nav>

    <nav class="burger" role="navigation">
        <button type="button" id="burger-open" class="burger__open-button">
            <div class="burger__open-button-icon">
                <span class="fa fa-bars">
                </span>
            </div>
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
                        <a href="${recentRecords}" class="burger__link">
                            <g:message code="menu.records.label" />
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
                        <localeSwitcher:localeButton uri="${request.forwardURI}" />
                    </div>
                </div>
            </div>

            <button id="burger-close" class="burger__close-button">
                ✕
            </button>
        </div>
    </nav>

    <nav id="language-nav">
        <span class="submenu">
            <div class="submenu__title">
                <localeSwitcher:localeButton uri="${request.forwardURI}" styleClass="submenu__title-link" />
            </div>
        </span>
    </nav>
</header>
