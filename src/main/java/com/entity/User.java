package com.entity;

import javax.xml.crypto.Data;
import java.sql.Timestamp;

public class User {
   private String id;
  private   String password;
   private Data inserttime;
    public Data getInserttime() {
        return inserttime;
    }

    public void setInserttime(Data inserttime) {
        this.inserttime = inserttime;
    }



    public User(String id, String password, Timestamp timestamp) {
        this.id = id;
        this.password = password;
    }

    public User(String id, String password, Data inserttime) {
        this.id = id;
        this.password = password;
        this.inserttime = inserttime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
