package elurikkus.commons

/**
* This controller adds ./messages/i18n/.. url which serves translation files for use
* in javascript jquery-i18n-properties library. The served files also includes all the
* translation texts from the dependencies/plugins.
*/
class MessagesController {
    def messageSource // ExtendedPluginAwareResourceBundleMessageSource
    static defaultAction = "i18n"

    /**
     * Export raw i18n message properties as TEXT for use by JavaScript i18n library
     *
     * @param id - messageSource file name
     * @return
     */
    def i18n(String id) {
        Locale locale = request.locale

        if (id && id.startsWith("messages_")) {
            // Assume standard messageSource file name pattern:
            // messages.properties, messages_en.properties, messages_en_US.properties
            // String locale_suffix = id.replaceFirst(/messages_(.*)/,'$1')
            String localeCode = id?.tokenize('_')[1]

            // generic-collectory has .properties in id. No other app does that ...
            localeCode = localeCode.tokenize('.')[0]
            locale = new Locale(localeCode)
        }

        Map props = messageSource.listMessageCodes(locale ?: request.locale)

        response.setHeader("Content-type", "text/plain; charset=UTF-8")

        def messages = props.collect{ "${it.key}=${it.value}" }

        render ( text: messages.sort().join("\n") )
    }
}
