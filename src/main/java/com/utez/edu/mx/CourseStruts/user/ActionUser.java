package com.utez.edu.mx.CourseStruts.user;

import java.util.ArrayList;
import java.util.List;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class ActionUser {

    private List<BeanUser> listUser = new ArrayList<>();
    private BeanUser user;
    private String message;
    private String data;


    public String user(){
        return SUCCESS;
    }





    public List<BeanUser> getListUser() {
        return listUser;
    }

    public void setListUser(List<BeanUser> listUser) {
        this.listUser = listUser;
    }

    public BeanUser getUser() {
        return user;
    }

    public void setUser(BeanUser user) {
        this.user = user;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
