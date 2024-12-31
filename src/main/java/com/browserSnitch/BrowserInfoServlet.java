package com.browserSnitch;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "BrowserInfoServlet", value = "")
public class BrowserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // Get locale and resource bundle
        Locale locale = request.getLocale();
        String lang = locale.getLanguage();
        ResourceBundle bundle = ResourceBundle.getBundle("i18n.messages", locale);

        String direction = "ltr"; // Default to left-to-right
        if (Arrays.asList("ar", "he", "fa", "ur").contains(lang)) {
            direction = "rtl"; // Right-to-left languages
        }

        List<String> headerNamesList = new ArrayList<>();
        List<String> headerValuesList = new ArrayList<>();

        String userAgent = request.getHeader("User-Agent");
        String ipAddress = request.getHeader("X-Forwarded-For");
        if (ipAddress == null) {
            ipAddress = request.getRemoteAddr();
        }
        String language = request.getHeader("Accept-Language");
        String sessionId = request.getSession().getId();

        // Collect all headers
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String name = headerNames.nextElement();
            String value = request.getHeader(name);
            headerNamesList.add(name);
            headerValuesList.add(value);
        }



        request.setAttribute("bundle", bundle);
        request.setAttribute("lang", lang);
        request.setAttribute("direction", direction);
        request.setAttribute("userAgent", userAgent);
        request.setAttribute("ipAddress", ipAddress);
        request.setAttribute("language", language);
        request.setAttribute("sessionId", sessionId);
        request.setAttribute("headerNamesList", headerNamesList);
        request.setAttribute("headerValuesList", headerValuesList);


        request.getRequestDispatcher("/index.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}