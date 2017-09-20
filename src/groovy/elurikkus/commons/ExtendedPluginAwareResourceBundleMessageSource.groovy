package elurikkus.commons

import org.codehaus.groovy.grails.context.support.PluginAwareResourceBundleMessageSource

/**
 * Extend PluginAwareResourceBundleMessageSource so we can access the (protected)
 * getMergedProperties() method to export all i18n messages for JS usage.
 *
 * @author "Nick dos Remedios <Nick.dosRemedios@csiro.au>"
 */
class ExtendedPluginAwareResourceBundleMessageSource extends PluginAwareResourceBundleMessageSource {
    /**
     * Provide a complete listing of properties for a given locale, as a Map
     * Client app properties override those from this plugin
     *
     * @param locale
     * @return
     */
    Map<String, String> listMessageCodes(Locale locale) {
        Properties pluginProperties = getMergedPluginProperties(locale).properties
        Properties properties = getMergedProperties(locale).properties
        return pluginProperties.plus(properties)
    }
}
