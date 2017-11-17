//src/groovy
package elurikkus.commons

import groovy.transform.CompileStatic
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest
import org.springframework.beans.propertyeditors.LocaleEditor
import org.springframework.util.StringUtils
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor
import org.springframework.web.servlet.support.RequestContextUtils

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@CompileStatic
class CustomLocaleChangeInterceptor extends LocaleChangeInterceptor {

    String paramName = DEFAULT_PARAM_NAME

    void setParamName(String name) {
        paramName = name
        super.setParamName name
    }

    @Override
    boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        GrailsWebRequest webRequest = GrailsWebRequest.lookup(request)
        def params = webRequest.params

        def localeParam = params?.get(paramName)
        if (!localeParam) {
            return super.preHandle(request, response, handler)
        }

        try {
            // choose first if multiple specified
            if (localeParam.getClass().isArray()) {
                localeParam = ((Object[])localeParam)[0]
            }

            localeParam = (localeParam.toString().substring(0, 2) == "et" ? "et" : "en")

            def localeResolver = RequestContextUtils.getLocaleResolver(request)
            def localeEditor = new LocaleEditor()
            localeEditor.setAsText(localeParam.toString())
            localeResolver?.setLocale(request, response, (Locale)localeEditor.value)
            return true
        }
        catch (Exception e) {
            println "Error intercepting locale change: ${e.message}"
            return true
        }
    }
}
