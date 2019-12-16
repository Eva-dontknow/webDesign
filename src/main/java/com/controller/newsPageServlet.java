package com.controller;

import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/newspage")
public class newsPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int newsid = Integer.parseInt(req.getParameter("nid"));
        req.setAttribute("news", ServiceFactory.getNewsService().getNews(newsid));
        req.getRequestDispatcher("/WEB-INF/jsp/newspage.jsp")
                .forward(req, resp);
    }

}
