<%@ page import="grails.util.Environment" %>

<footer>
    <div class="footer">
        <div class="footer-logos">
            <a
                href="https://natarc.ut.ee"
                target="_blank"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.natarc')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/natarc_logo_black.svg"
                    alt="${message(code: 'footer.logo.alt.natarc')}"
                />
            </a>

            <a
                href="https://plutof.ut.ee/"
                target="_blank"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.plutof')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/plutof_logo_green.svg"
                    alt="${message(code: 'footer.logo.alt.plutof')}"
                />
            </a>

            <a
                href="https://www.ala.org.au/"
                target="_blank"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.ala')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/ala_logo.png"
                    alt="${message(code: 'footer.logo.alt.ala')}"
                />
            </a>

            <a
                href="https://www.gbif.org/"
                target="_blank"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.gbif')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/GBIF_2015_logo.svg"
                    alt="${message(code: 'footer.logo.alt.gbif')}"
                />
            </a>

            <a
                href="https://www.dissco.eu/"
                target="_blank"
                class="footer-logos__logo footer-logos__logo--medium"
                title="${message(code: 'footer.logo.title.dissco')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/dissco_logo.png"
                    alt="${message(code: 'footer.logo.alt.dissco')}"
                />
            </a>

            <a
                href="https://www.elus.ee/"
                target="_blank"
                title="${message(code: 'footer.logo.title.elus')}"
                class="footer-logos__logo footer-logos__logo--medium"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/ELUS_logo.svg"
                    alt="ELUS logo" />
            </a>

            <a
                href="https://www.eoy.ee/"
                target="_blank"
                title="${message(code: 'footer.logo.title.eoy')}"
                class="footer-logos__logo footer-logos__logo--medium"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/EOY_logo.svg"
                    alt="EOY logo" />
            </a>

            <div class="footer-logos__logo footer-logos__logo--large">
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/EURF_logo_est.jpeg"
                    alt="EL Regionaalarengu Fond" />
            </div>
        </div>

        <div class="footer-licence">
            <img
                class="footer-licence__logo"
                src="${grailsApplication.config.serverRoot}/assets/images/creative_commons_logo.svg"
                alt="${message(code: 'footer.logo.alt.license')}"
            />

            <div class="footer-licence__text">
                <g:message code="footer.license.01" />
                <a
                    href="https://creativecommons.org/licenses/by/4.0/"
                    title="${message(code: 'footer.license.href.title')}"
                >
                    <g:message code="footer.license.02" />
                </a>
                <g:message code="footer.license.03" />
            </div>
        </div>
    </div>

    <g:if test="${Environment.current.name == 'development'}">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700" rel="stylesheet">
    </g:if>

    <g:else>
        <style>
            /* open-sans-regular - latin */
            @font-face {
                font-family: 'Open Sans';
                font-style: normal;
                font-weight: 400;
                src: url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-regular.eot'); /* IE9 Compat Modes */
                src: local('Open Sans Regular'), local('OpenSans-Regular'),
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-regular.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-regular.woff2') format('woff2'), /* Super Modern Browsers */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-regular.woff') format('woff'), /* Modern Browsers */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-regular.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-regular.svg#OpenSans') format('svg'); /* Legacy iOS */
            }
            /* open-sans-italic - latin */
            @font-face {
                font-family: 'Open Sans';
                font-style: italic;
                font-weight: 400;
                src: url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-italic.eot'); /* IE9 Compat Modes */
                src: local('Open Sans Italic'), local('OpenSans-Italic'),
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-italic.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-italic.woff2') format('woff2'), /* Super Modern Browsers */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-italic.woff') format('woff'), /* Modern Browsers */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-italic.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-italic.svg#OpenSans') format('svg'); /* Legacy iOS */
            }
            /* open-sans-700 - latin */
            @font-face {
                font-family: 'Open Sans';
                font-style: normal;
                font-weight: 700;
                src: url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-700.eot'); /* IE9 Compat Modes */
                src: local('Open Sans Bold'), local('OpenSans-Bold'),
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-700.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-700.woff2') format('woff2'), /* Super Modern Browsers */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-700.woff') format('woff'), /* Modern Browsers */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-700.ttf') format('truetype'), /* Safari, Android, iOS */
                    url('${grailsApplication.config.serverRoot}/assets/fonts/open-sans-v15-latin-700.svg#OpenSans') format('svg'); /* Legacy iOS */
            }
        </style>
    </g:else>
</footer>
