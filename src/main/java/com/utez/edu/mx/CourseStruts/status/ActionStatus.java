package com.utez.edu.mx.CourseStruts.status;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class ActionStatus {

    private List<BeanStatus> listStatus = new ArrayList<>();
    private String message;
    private BeanStatus status;

    public String findAllStatus() throws SQLException {
        setListStatus(new DaoStatus().findAll());
        return SUCCESS;
    }




    public List<BeanStatus> getListStatus() {
        return listStatus;
    }

    public void setListStatus(List<BeanStatus> listStatus) {
        this.listStatus = listStatus;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public BeanStatus getStatus() {
        return status;
    }

    public void setStatus(BeanStatus status) {
        this.status = status;
    }
}
