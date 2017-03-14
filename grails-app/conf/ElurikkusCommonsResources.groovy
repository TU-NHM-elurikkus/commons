modules = {
    menu {
        resource url: [dir: 'css', file: 'menu.css', plugin: 'elurikkus-commons'], disposition: 'defer'
    }

    commons {
        resource url: [dir: 'css', file: 'elurikkus.css', plugin: 'elurikkus-commons'], disposition: 'defer'
        // Rename it.
        resource url: [dir: 'css', file: 'elurikkus-cms.css', plugin: 'elurikkus-commons'], disposition: 'defer'
    }
}
