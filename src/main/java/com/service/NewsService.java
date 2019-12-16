package com.service;

import com.entity.News;

import java.util.List;

public interface NewsService {
    /**
     * 查询全部新闻
     * @return
     */
    public List<News> listNews();
    /**
     * 添加新闻
     * @param title
     * @param content
     */
    public void addNews(String title, String content);
    /**
     * 更新新闻
     *
     */
    public void updateNews(News news);

    /**
     * 基于ID获取指定新闻
     * @param id
     * @return
     */
    public News getNews(int id);
    /**
     * 基于title获取指定新闻
     * @param title
     * @return
     */
    public News getNews(String title);

    /**
     * 删除新闻
     *
     */
    public void deleteNews(int id);

}
