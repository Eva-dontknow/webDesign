package com.service.impl;

import com.entity.News;
import com.service.NewsService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());


    @Override
    public List<News> listNews() {
        List<News> news0 = new ArrayList<>();
        String sql = "SELECT * FROM news ORDER BY id desc ";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);
             ResultSet rs = st.executeQuery()){
            while (rs.next()){
                News news1 = new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getTimestamp(4));
                news0.add(news1);
                //System.out.println(news1.getId());
            }
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }

        return news0;
    }

    @Override
    public void addNews(String newTitle,String newContent) {
        String sql = "INSERT INTO news(title,content) VALUES(?,?)";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);
        ) {
            st.setString(1, newTitle);
            st.setString(2, newContent);
            st.executeUpdate();
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }
    }

    @Override
    public void updateNews(News news0) {
        String sql = "UPDATE news SET title=? , content=? WHERE id=?";

        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setString(1, news0.getTitle());
            st.setString(2, news0.getContent());
            st.setInt(3, news0.getId());
            st.executeUpdate();
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }
    }


    @Override
    public News getNews(String title) {
        News news0 = null;
        String sql = "SELECT * FROM news WHERE title=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);
            try (ResultSet rs = st.executeQuery()){
                while (rs.next()){
                    news0 = new News(rs.getInt("id"),rs.getString("title"),rs.getString("content"),rs.getTimestamp("inserttime"));
                }
            }
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }
        return news0;
    }

    @Override
    public News getNews(int id) {
        News news0 = null;
        String sql = "SELECT * FROM news WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()){
                while (rs.next()){
                    news0 = new News(rs.getInt("id"),rs.getString("title") ,rs.getString("content"),rs.getTimestamp("inserttime"));
                }
            }
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }

        return news0;
    }

    @Override
    public void deleteNews(int id) {
        String sql = "DELETE FROM news WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setInt(1, id);
            st.executeUpdate();
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }

    }
}