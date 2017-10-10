<footer role="contentinfo">
    <div class="footer">
        <div class="footer-licence">
            <img
                class="footer-licence__logo"
                src="${grailsApplication.config.serverRoot}/assets/images/creative_commons_logo.svg"
                alt="${message(code: 'footer.logo.alt.license')}"
            />

            <div class="footer-licence__text">
                <g:message code="footer.license.01" />
                <a
                    href="http://creativecommons.org/licenses/by/4.0/"
                    title="${message(code: 'footer.license.href.title')}"
                >
                    <g:message code="footer.license.02" />
                </a>
                <g:message code="footer.license.03" />
            </div>
        </div>

        <div class="footer-logos">
            <a
                href="http://plutof.ut.ee/"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.plutof')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/plutof_logo_green.svg"
                    alt="${message(code: 'footer.logo.alt.plutof')}"
                />
            </a>

            <a
                href="http://www.ala.org.au/"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.ala')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/ala_logo.png"
                    alt="${message(code: 'footer.logo.alt.ala')}"
                />
            </a>

            <a
                href="http://www.gbif.org/"
                class="footer-logos__logo"
                title="${message(code: 'footer.logo.title.gbif')}"
            >
                <img
                    src="${grailsApplication.config.serverRoot}/assets/images/GBIF_2015_logo.svg"
                    alt="${message(code: 'footer.logo.alt.gbif')}"
                />
            </a>
        </div>
    </div>
</footer>
