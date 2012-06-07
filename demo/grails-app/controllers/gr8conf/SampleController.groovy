package gr8conf

import grails.web.*

class SampleController {

    def index() {
        render "index"
    }

    def page() {
        final List<String> items = ['one', 'two', 'three']
        [items: items]
    }

    def tagReturnValues() {
        def codecValue = g.encodeAs(codec: 'HTML', '<h2>Chapter</h2>')
        render "Value with codec HTML is $codecValue"
    }

    /**
     * With hyphenated URL converter this will be method-with-camel-case
     */
    def methodWithCamelCase() {
        render "Output of ${actionName}"
    }

    /**
     * curl -X POST -H "Content-type: text/xml" -d '<book><title>Gr8Conf2012</title></book>' http://localhost:8080/demo/sample/book
     */
    def book() {
        final String bookTitle = request.XML.book.title
        render "Found book title ${bookTitle}\n"
    }

    def requestSample() {
        def attributesWithGrails = request.findAll { key, value -> key.contains('grails') }
        final boolean isGetRequest = request.get
        final boolean isPostRequest = request.post
        final boolean isAjaxRequest = request.xhr

        [attributes: attributesWithGrails, get: isGetRequest, post: isPostRequest, AJAX: isAjaxRequest]
    }

    def findBook(final Long id) {
        render "Found book with id $id"
    }

    def findBookByIdentifier(@RequestParameter('identifier') final Long id) {
        render "Found book with $id"
    }
}
