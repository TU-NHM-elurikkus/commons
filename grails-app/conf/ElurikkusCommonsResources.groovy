modules = {
    menu {
        dependsOn 'commons'
        resource id: 'menu-style', url: [dir: 'css', file: 'menu.css', plugin: 'elurikkus-commons'], disposition: 'head'
    }

    commons {
        dependsOn 'bootstrap';
        resource id: 'elurikkus-ala-style', url: [dir: 'css', file: 'elurikkus.css', plugin: 'elurikkus-commons'], disposition: 'head'
        resource id: 'elurikkus-common-style', url: [dir: 'css', file: 'elurikkus-common.css', plugin: 'elurikkus-commons'], disposition: 'head'
    }

    // Tooltips required by Bootstrap 4.
    tether {
        resource id: 'tether-script', url: [dir: 'js', file: 'tether.min.js', plugin: 'elurikkus-commons'], disposition: 'head'
        resource id: 'tether-style', url: [dir: 'css', file: 'tether.min.css', plugin: 'elurikkus-commons'], disposition: 'head'
    }

    // Bootstrap 4.
    bootstrap {
        dependsOn 'tether, jquery'
        resource id: 'bootstrap-script', url: [dir: 'js', file: 'bootstrap.min.js', plugin: 'elurikkus-commons'], disposition: 'head'
        resource id: 'bootstrap-style', url: [dir: 'css', file: 'bootstrap.min.css', plugin: 'elurikkus-commons', attrs: [media: 'screen, projection, print']]
        resource id: 'bootstrap-grid', url: [dir: 'css', file: 'bootstrap-grid.min.css', plugin: 'elurikkus-commons', attrs: [media: 'screen, projection, print']]
    }
}
