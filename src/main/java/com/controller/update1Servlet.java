package com.controller;

import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update1")
public class update1Servlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int newsid = Integer.parseInt(req.getParameter("nid"));
        req.setAttribute("news", newsService.getNews(newsid));
        req.getRequestDispatcher("/WEB-INF/jsp/update.jsp")
                .forward(req,resp);
    }
}
