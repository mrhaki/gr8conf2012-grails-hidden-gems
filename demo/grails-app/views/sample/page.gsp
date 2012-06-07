<!doctype html>
<html>
    <head><title>Gr8Conf 2012 - Grails Hidden Gems</title></head>
    <body>
        <h1>EncodeAs</h1>

        <g:encodeAs codec="HTML">
            <h2>Chapter</h2>
        </g:encodeAs>

        <g:encodeAs codec="MD5">Test value</g:encodeAs>

        <g:encodeAs codec="Base64">Test value</g:encodeAs>

        <h1>WithTag</h1>

        <g:withTag name="div" attrs="[class: 'demo']">
            Simple
        </g:withTag>

        <h1>Format tags</h1>

        <h2>Boolean</h2>

        <g:formatBoolean boolean="${true}" true="Yes" false="No"/>
        <g:formatBoolean boolean="${false}" true="Yes" false="No"/>

        <g:formatBoolean boolean="${true}"/>
        <g:formatBoolean boolean="${false}"/>

        <h2>Date</h2>

        <g:formatDate date="${new Date()}" formatName="custom.date.format"/>

        <h1>GSP variables</h1>

        <p>${applicationContext}</p>

        <p>${grailsApplication.config}</p>

        <p>Action is ${actionName} and controller is ${controllerName}</p>

        <h1>Link namespace</h1>

        <p><g:link mapping="bookDetails" id="1">Details</g:link></p>

        <p><link:bookDetails id="1">Details</link:bookDetails></p>

        <h1>Template namespace</h1>

        <p>
            <g:render template="header" model="[cssClassname: 'header']">
                Simple template with body
            </g:render>
        </p>

        <p>
            <tmpl:header cssClassname="header">
                Simple template with body and template namespace
            </tmpl:header>
        </p>

    </body>
</html>