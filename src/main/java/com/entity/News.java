package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String title;
    private String content;
    public News(String title,String content){
        this.title = title;
        this.content = content;
    }
    public News(int id ,String title,String content){
        this.id = id;
        this.title = title;
        this.content=content;
    }
    public News(int id ,String title,String content,Date inserttime){
        this.id = id;
        this.title = title;
        this.content = content;
        this.inserttime = inserttime;
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    private Date inserttime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getInserttime() {
        return inserttime;
    }

    public void setInserttime(Date inserttime) {
        this.inserttime = inserttime;
    }



    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
