package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update2")
public class update2Servlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int newsid = Integer.parseInt(req.getParameter("nid"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        News news = new News(newsid,title,content);
        newsService.updateNews(news);
        resp.sendRedirect(req.getContextPath()+"managenews");

    }
}
