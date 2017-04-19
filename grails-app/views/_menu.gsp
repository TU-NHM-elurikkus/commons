<r:require modules="menu" />

<header class="header" role="banner">
    <a class="elurikkus-menu__brand" href="http://ala-test.ut.ee/">
        <img src="${resource(dir: 'images', file: 'elurikkus_logo.svg')}" class="logo" />
        %{-- XXX: Not the best place for this, but unless we make a layout to use for each module, there is no other --}%
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    </a>

    <nav class="menu" role="navigation">
        <span class="submenu">
            <div class="submenu__title">
                <a class="submenu__title-link ">
                    Checklists
                </a>

                <span class="submenu__title-addon">
                    &#9660;
                </span>
            </div>

            <div class="submenu__dropdown">
                <div class="submenu__dropdown-pointer"></div>
                <div class="submenu__dropdown-pointer-fill"></div>

                <div class="submenu__dropdown__content">
                    <div class="submenu__item">
                        <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488808569004">
                            Invasive Species
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488807485601">
                            Estonian Red List of Threatened Species
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488808243964">
                            Protected Species
                        </a>
                    </div>
                </div>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a class="submenu__title-link ">
                    Observations
                </a>

                <span class="submenu__title-addon">
                    &#9660;
                </span>
            </div>

            <div class="submenu__dropdown">
                <div class="submenu__dropdown-pointer"></div>
                <div class="submenu__dropdown-pointer-fill"></div>

                <div class="submenu__dropdown__content">
                    <div class="submenu__item">
                        <a href="http://ala-test.ut.ee/generic-hub/occurrences/search?q=basis_of_record:HumanObservation&fq=&pageSize=100">
                            Recent Observations
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="https://plutof.ut.ee/#/observation/add">
                            Add Observation
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="http://ala-test.ut.ee/generic-hub">
                            Search
                        </a>
                    </div>
                </div>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href="http://ala-test.ut.ee/collectory/" class="submenu__title-link">
                    Collections
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a href=http://ala-test.ut.ee/collectory/datasets class="submenu__title-link">
                    Datasets
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a class="submenu__title-link ">
                    Atlases
                </a>

                <span class="submenu__title-addon">
                    &#9660;
                </span>
            </div>

            <div class="submenu__dropdown">
                <div class="submenu__dropdown-pointer"></div>
                <div class="submenu__dropdown-pointer-fill"></div>

                <div class="submenu__dropdown__content">
                    <div class="submenu__item">
                        <a href="">
                            Taimeatlas
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="">
                            Taimeatlas Squares
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="">
                            Taxon Distribution Map
                        </a>
                    </div>

                    <div class="submenu__item">
                        <a href="">
                            Bird Nesting Atlas
                        </a>
                    </div>
                </div>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a title="Coming soon" class="submenu__title-link submenu__title-link--disabled">
                    Analyse
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a title="Coming soon" class="submenu__title-link submenu__title-link--disabled">
                    Gallery
                </a>
            </div>
        </span>

        <span class="submenu">
            <div class="submenu__title">
                <a title="Coming soon" class="submenu__title-link submenu__title-link--disabled">
                    Contact
                </a>
            </div>
        </span>
    </nav>

    <nav class="burger">
        <button type="button" id="burger-open" class="burger__open-button">
            <span class="burger__open-button-icon">
                ≡
            </span>
        </button>

        <div id="burger-popup" class="burger__popup">
            <div class="burger__popup-content">
                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        Checklists
                    </h2>

                    <div class="burger__submenu-contents">
                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488808569004">
                                Invasive Species
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488807485601">
                                Estonian Red List of Threatened Species
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/lists/speciesListItem/list/drt1488808243964">
                                Protected Species
                            </a>
                        </div>
                    </div>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        Observations
                    </h2>

                    <div class="burger__submenu-contents">
                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/generic-hub/occurrences/search?q=basis_of_record:HumanObservation&fq=&pageSize=100">
                                Recent Observations
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="https://plutof.ut.ee/#/observation/add">
                                Add Observation
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="http://ala-test.ut.ee/generic-hub">
                                Search
                            </a>
                        </div>
                    </div>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        <a href="http://ala-test.ut.ee/collectory/">
                            Collections
                        </a>
                    </h2>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        <a href="http://ala-test.ut.ee/collectory/datasets">
                            Datasets
                        </a>
                    </h2>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        Atlases
                    </h2>

                    <div class="burger__submenu-contents">
                        <div class="burger_submenu-entry">
                            <a href="">
                                Taimeatlas
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="">
                                Taimeatlas Squares
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="">
                                Taxon Distribution Map
                            </a>
                        </div>

                        <div class="burger_submenu-entry">
                            <a href="">
                                Bird Nesting Atlas
                            </a>
                        </div>
                    </div>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        Analyse
                    </h2>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        Gallery
                    </h2>
                </div>

                <div class="burger__submenu">
                    <h2 class="burger__submenu-title">
                        Contact
                    </h2>
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
