package com.service.impl;

import com.entity.User;
import com.service.UserService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserServiceImpl implements UserService {

    @Override
    public List<User> listUser() {
        List<User> user0 = new ArrayList<>();
        String sql = "SELECT * FROM user";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);
             ResultSet rs = st.executeQuery()){
            while (rs.next()){
                User user1 = new User(rs.getString(1),rs.getString(2),rs.getTimestamp(3));
                user0.add(user1);
                //System.out.println(news1.getId());
            }
        }catch (SQLException e){
            //logger.warning(e.getMessage());
        }

        return user0;
    }
    }

