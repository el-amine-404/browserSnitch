<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="${lang}" dir="${direction}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Meta Tags Generated with https://metatags.io -->
    <!-- Primary Meta Tags -->
    <title>BrowserSnitch - Discover Your Browser's Behavior</title>
    <meta name="title" content="BrowserSnitch - Discover Your Browser's Behavior" />
    <meta name="description" content="Explore your IP address, user agent, and more with BrowserSnitch." />
    <meta name="keywords" content="browser information, HTTP headers, user agent, IP address, browser insights, BrowserSnitch">
    <meta name="author" content="Amine El Houjjaji">
    <meta name="robots" content="index, follow">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website" />
    <meta property="og:url" content="${pageContext.request.contextPath}" />
    <meta property="og:title" content="BrowserSnitch - Discover Your Browser's Behavior" />
    <meta property="og:description" content="Explore your IP address, user agent, and more with BrowserSnitch." />
    <meta property="og:image" content="${pageContext.request.contextPath}/images/browser-snitch-1200-627.png" />

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image" />
    <meta property="twitter:url" content="${pageContext.request.contextPath}" />
    <meta property="twitter:title" content="BrowserSnitch - Discover Your Browser's Behavior" />
    <meta property="twitter:description" content="Explore your IP address, user agent, and more with BrowserSnitch." />
    <meta property="twitter:image" content="${pageContext.request.contextPath}images/browser-snitch-1200-627.png" />

    <%-- ./favicon start --%>
    <%-- Generated by https://realfavicongenerator.net/ --%>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/favicons/favicon-96x96.png?v=1" sizes="96x96" />
    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/favicons/favicon.svg?v=1" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicons/favicon.ico?v=1" />
    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/favicons/apple-touch-icon.png?v=1" />
    <meta name="apple-mobile-web-app-title" content="BrowserSnitch?v=1" />
    <link rel="manifest" href="${pageContext.request.contextPath}/favicons/site.webmanifest" />
    <%-- ./favicon end --%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Arabic&display=swap" rel="stylesheet">
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: 'Noto Sans Arabic', sans-serif;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="">${bundle['title']}</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
                aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="">${bundle['navigation.home']}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#headers">${bundle['navigation.headers']}</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container my-5">
    <h1 class="mb-4 text-center">${bundle['welcome.message']}</h1>
    <p class="text-center">${bundle['description']}</p>

    <h2 class="mt-5">${bundle['section.browser.info']}</h2>
    <p>${bundle['section.browser.info.paragraph']}</p>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th scope="col">Parameter</th>
                <th scope="col">Value</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>IP Address</td>
                <td>${ipAddress}</td>
            </tr>
            <tr>
                <td>User Agent</td>
                <td>${userAgent}</td>
            </tr>
            <tr>
                <td>Language Preferences</td>
                <td>${language}</td>
            </tr>
            <tr>
                <td>Session ID</td>
                <td>${sessionId}</td>
            </tr>
            </tbody>
        </table>
    </div>

    <h2 id="headers" class="mt-5">${bundle['section.headers']}</h2>
    <p>${bundle['section.headers.paragraph']}</p>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th scope="col">Header Name</th>
                <th scope="col">Header Value</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="headerName" items="${headerNamesList}">
                <tr>
                    <td>${headerName}</td>
                    <td>${header[headerName]}</td>
                </tr>
            </c:forEach>
<%--            another way of doing the thing--%>
<%--            <c:forEach items="#{headerValues}" var="entry">--%>
<%--                <tr>--%>
<%--                    <td>${entry.key}</td>--%>
<%--                    <c:forEach items="#{entry.value}" var="headerValue">--%>
<%--                        <td>${headerValue}</td>--%>
<%--                    </c:forEach>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
            </tbody>
        </table>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-light py-3 mt-auto">
    <div class="container text-center">
        <p class="mb-0">${bundle['footer.copyright']}</p>
        <p class="mb-0">${bundle['footer.made.with']}</p>
    </div>
</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
