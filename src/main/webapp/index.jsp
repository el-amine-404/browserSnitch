<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BrowserSnitch</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="">BrowserSnitch</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
                aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#headers">Headers</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container my-5">
    <h1 class="mb-4 text-center">Welcome to BrowserSnitch</h1>
    <p class="text-center">Discover detailed insights about your browser and HTTP request. BrowserSnitch provides a
        comprehensive overview of your browser's behavior and the data sent during your visit.</p>

    <h2 class="mt-5">Browser Information</h2>
    <p>This section displays key details about your browser and session. It includes your IP address, the browser user
        agent string, your language preferences, and a unique session identifier for your visit.</p>
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

    <h2 id="headers" class="mt-5">HTTP Headers</h2>
    <p>HTTP headers provide important metadata about the request made to the server. They include details such as
        content types, accepted languages, caching policies, and more. Below is a list of all headers sent with your
        request.</p>
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
        <p class="mb-0">&copy; 2024 BrowserSnitch. All rights reserved.</p>
        <p class="mb-0">Made with <i class="bi bi-heart-fill text-danger"></i> using Jakarta EE and Bootstrap.</p>
    </div>
</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
