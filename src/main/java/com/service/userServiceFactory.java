package com.service;

import com.service.impl.UserServiceImpl;

public class userServiceFactory {
    private static final UserService userService = create();

    private static UserService create(){
        return new UserServiceImpl();
    }
    public static UserService getUserService(){
        return userService;
    }
//    public static User getUser(String id,String password){
//        User user = null;
//        List<User> list = userService.listUser();
//        for (int i = 0; i < list.size(); i++) {
//            //User users = list.get(i);
//            if (list.get(i).getId().equals())
//        }
//
//        return user;
//    }
}
