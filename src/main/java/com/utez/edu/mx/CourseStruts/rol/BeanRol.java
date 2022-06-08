package com.utez.edu.mx.CourseStruts.rol;

import com.utez.edu.mx.CourseStruts.status.BeanStatus;

public class BeanRol {

    private int id;
    private String name;
    private BeanStatus status;

    public BeanRol() {
    }

    public BeanRol(String name, BeanStatus status) {
        this.name = name;
        this.status = status;
    }

    public BeanRol(int id, String name, BeanStatus status){
        this.id = id;
        this.name = name;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BeanStatus getStatus() {
        return status;
    }

    public void setStatus(BeanStatus status) {
        this.status = status;
    }
}
