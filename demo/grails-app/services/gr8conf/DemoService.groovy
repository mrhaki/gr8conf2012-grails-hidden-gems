package gr8conf

class DemoService {

    def groovyPageRenderer
    def grailsLinkGenerator

    String generateEmail(final String username) {
        final String homeLink = grailsLinkGenerator.link(absolute: true, controller: 'demo')
        final String emailText = groovyPageRenderer.render(template: '/emails/confirm.gsp', model: [homeLink: homeLink, user: username])
        emailText
    }
}
