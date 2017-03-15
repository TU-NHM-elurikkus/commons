modules = {
    menu {
        resource url: [dir: 'css', file: 'menu.css', plugin: 'elurikkus-commons'], disposition: 'defer'
    }

    commons {
        resource url: [dir: 'css', file: 'elurikkus.css', plugin: 'elurikkus-commons'], disposition: 'defer'
        // Rename it.
        resource url: [dir: 'css', file: 'elurikkus-cms.css', plugin: 'elurikkus-commons'], disposition: 'defer'
    }

    // Tooltips required by Bootstrap 4.
    tether {
        resource url: [dir: 'js', file: 'tether.min.js']
        resource url: [dir: 'css', file: 'tether.min.css']
    }

    // Bootstrap 4
    bootstrap {
        dependsOn 'tether'
        resource url: [dir: 'js', file: 'bootstrap.min.js', disposition: 'head']
        resource url: [dir: 'css', file: 'bootstrap.min.css', attrs: [media: 'screen, projection, print']]
        resource url: [dir: 'css', file: 'bootstrap-grid.min.css', attrs: [media: 'screen, projection, print']]
    }
}
