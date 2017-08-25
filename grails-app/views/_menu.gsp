<header class="header" role="banner">
    <%-- XXX: Not the best place for this, but unless we make a layout to use for each module, there is no other --%>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <a class="elurikkus-menu__brand" href="http://ala-test.ut.ee/">
        <img src="http://ala-test.ut.ee/assets/images/elurikkus_logo.svg" class="logo" />
    </a>

    <nav class="menu" role="navigation">
        <span class="submenu">
            <div class="submenu__title">
                <a class="submenu__title-link ">
                    <g:message code="menu.lists.label" />
                </a>

                <span class="submenu__title-addon">
                    &#9660;
                </span>
            </div>

            <div class="submenu__dropdown">
                <div class="submenu__dropdown-pointer"></div>
                <div class="submenu__dropdown-pointer-fill"></div>

                <div class="submenu__dropdown-content">
                    <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488807485601" class="submenu__dropdown-link">
                        <g:message code="menu.lists.threatenedSpecies" />
                    </a>

                    <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488802807768" class="submenu__dropdown-link">
                        <g:message code="menu.lists.invasiveSpecies" />
                    </a>

                    <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1491397493412" class="submenu__dropdown-link">
                        <g:message code="menu.lists.protectedSpecies" />
                    </a>
                </div>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a class="submenu__title-link ">
                    <g:message code="menu.observations.label" />
                </a>

                <span class="submenu__title-addon">
                    &#9660;
                </span>
            </div>

            <div class="submenu__dropdown">
                <div class="submenu__dropdown-pointer"></div>
                <div class="submenu__dropdown-pointer-fill"></div>

                <div class="submenu__dropdown-content">
                    <a href="http://ala-test.ut.ee/generic-hub/occurrences/search?q=basis_of_record:HumanObservation&fq=&pageSize=100" class="submenu__dropdown-link">
                        <g:message code="menu.observations.recentObservations" />
                    </a>

                    <a href="https://plutof.ut.ee/#/observation/add" class="submenu__dropdown-link">
                        <g:message code="menu.observations.addObservation" />
                    </a>

                    <a href="http://ala-test.ut.ee/generic-hub" class="submenu__dropdown-link">
                        <g:message code="menu.observations.search" />
                    </a>
                </div>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="http://ala-test.ut.ee/collectory/" class="submenu__title-link" class="submenu__dropdown-link">
                    <g:message code="menu.collections.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="http://ala-test.ut.ee/collectory/datasets" class="submenu__title-link">
                    <g:message code="menu.datasets.label" />
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a class="submenu__title-link ">
                    <g:message code="menu.atlases.label" />
                </a>

                <span class="submenu__title-addon">
                    &#9660;
                </span>
            </div>

            <div class="submenu__dropdown">
                <div class="submenu__dropdown-pointer"></div>
                <div class="submenu__dropdown-pointer-fill"></div>

                <div class="submenu__dropdown-content">
                    <a href="" class="submenu__dropdown-link">
                        <g:message code="menu.atlases.taimeatlas" />
                    </a>

                    <a href="" class="submenu__dropdown-link">
                        <g:message code="menu.atlases.taimeatlasSquares" />
                    </a>

                    <a href="" class="submenu__dropdown-link">
                        <g:message code="menu.atlases.taxonDistributionMap" />
                    </a>

                    <a href="" class="submenu__dropdown-link">
                        <g:message code="menu.atlases.birdNestingAtlas" />
                    </a>
                </div>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <localeSwitcher:localeButton uri="${request.forwardURI}" styleClass="submenu__title-link" />
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
                        <g:message code="menu.lists.label" />
                    </div>

                    <div class="burger__submenu-contents">
                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488807485601">
                                <g:message code="menu.lists.threatenedSpecies" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488802807768">
                                <g:message code="menu.lists.invasiveSpecies" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1491397493412">
                                <g:message code="menu.lists.protectedSpecies" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <g:message code="menu.observations.label" />
                    </div>

                    <div class="burger__submenu-contents">
                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/generic-hub/occurrences/search?q=basis_of_record:HumanObservation&fq=&pageSize=100">
                                <g:message code="menu.observations.recentObservations" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="https://plutof.ut.ee/#/observation/add">
                                <g:message code="menu.observations.addObservation" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/generic-hub">
                                <g:message code="menu.observations.search" />
                            </a>
                        </div>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="http://ala-test.ut.ee/collectory/">
                            <g:message code="menu.collections.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <a href="http://ala-test.ut.ee/collectory/datasets">
                            <g:message code="menu.datasets.label" />
                        </a>
                    </div>
                </div>

                <div class="burger__submenu">
                    <div class="burger__submenu-title">
                        <g:message code="menu.atlases.label" />
                    </div>

                    <div class="burger__submenu-contents">
                        <div class="burger_submenu-entry">
                            <a href="">
                                <g:message code="menu.atlases.taimeatlas" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="">
                                <g:message code="menu.atlases.taimeatlasSquares" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="">
                                <g:message code="menu.atlases.taxonDistributionMap" />
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="">
                                <g:message code="menu.atlases.birdNestingAtlas" />
                            </a>
                        </div>
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

        <script>
            var burgerPopup = document.getElementById('burger-popup');
            var burgerOpenBtn = document.getElementById('burger-open');

            document.getElementById('burger-open').addEventListener('click', function() {
                burgerPopup.className = 'burger__popup burger__popup--open';
            });

            document.getElementById('burger-close').addEventListener('click', function() {
                burgerPopup.className = 'burger__popup';
            });
        </script>
    </nav>
</header>
