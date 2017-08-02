package elurikkus.commons

import org.springframework.context.MessageSource
import org.springframework.web.servlet.support.RequestContextUtils

class LocaleSwitcherTagLib {
    static namespace = 'localeSwitcher'
    static defaultEncodeAs = [taglib: 'none']

    MessageSource messageSource

    // TODO: Read supported langauges from configuration.
    static final List<String> LANGUAGES = ['en', 'et']
    static final String DEFAULT_LANGUAGE = 'en'

    def localeButton = { args ->
        String uri = args.uri
        String styleClass = args.styleClass

        for ( String lang : LANGUAGES ) {
            String languageCode = "language.$lang"
            def currentLocale = RequestContextUtils.getLocale(request)
            def msg = messageSource.getMessage(languageCode, [] as Object[], null, currentLocale)

            def locale = LANGUAGES.find {
                it.contains("${currentLocale}")
            } ? currentLocale : DEFAULT_LANGUAGE

            if (!"${lang}".equals("${locale}")) {
                out << "<a href='${uri}?lang=${lang}' class='${styleClass}'>${msg}</a>"
            }
        }
    }
}
