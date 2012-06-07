eventIntegrateWithStart = {
    binding.integrateWithGr8Conf = {
        def readme = new File('README')
        readme << 'Simple Grails project for Gr8Conf 2012 Grails Hidden Gems session.'
    }
}

eventStatsStart = { pathInfo ->
    def configPath = [name: 'Configuration files',
                      path: 'grails-app.conf',
                      filetype: ['.groovy']]
    pathInfo << configPath
}

