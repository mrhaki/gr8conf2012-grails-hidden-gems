<!doctype html>
<html>
    <head><title>Request - Grails hidden gems</title></head>

    <body>
        <h1>Attributes with grails</h1>

        <ul>
        <g:each in="${attributes">
            <li>${it}</li>
        </g:each>
        </ul>

        <h1>Request info</h1>

        <table>
            <thead>
                <tr><th>Info</th><th>Value</th></tr>
            </thead>
            <tbody>
                <tr><td>POST?</td><td>${post}</td></tr>
                <tr><td>GET?</td><td>${get}</td></tr>
                <tr><td>AJAX?</td><td>${ajax}</td></tr>
            </tbody>
        </table>
    </body>
</html>