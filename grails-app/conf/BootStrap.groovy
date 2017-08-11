class BootStrap {
    def messageSource

    def init = { servletContext ->
        // Always pass messages through message format.
        messageSource.alwaysUseMessageFormat = true
    }

    def destroy = {
    }
}
