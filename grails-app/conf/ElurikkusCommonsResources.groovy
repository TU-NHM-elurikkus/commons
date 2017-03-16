modules = {
    menu {
        resource id: 'menu-style', url: [dir: 'css', file: 'menu.css', plugin: 'elurikkus-commons'], disposition: 'defer'
    }

    commons {
        resource id: 'elurikkus-ala-style', url: [dir: 'css', file: 'elurikkus.css', plugin: 'elurikkus-commons'], disposition: 'defer'
        resource id: 'elurikkus-common-style', url: [dir: 'css', file: 'elurikkus-common.css', plugin: 'elurikkus-commons'], disposition: 'defer'
    }

    // Tooltips required by Bootstrap 4.
    tether {
        resource id: 'tether-script', url: [dir: 'js', file: 'tether.min.js']
        resource id: 'tether-style', url: [dir: 'css', file: 'tether.min.css']
    }

    // Bootstrap 4.
    bootstrap {
        dependsOn 'tether'
        resource id: 'bootstrap-script', url: [dir: 'js', file: 'bootstrap.min.js', disposition: 'head']
        resource id: 'bootstrap-style', url: [dir: 'css', file: 'bootstrap.min.css', attrs: [media: 'screen, projection, print']]
        resource id: 'bootstrap-grid', url: [dir: 'css', file: 'bootstrap-grid.min.css', attrs: [media: 'screen, projection, print']]
    }
}
