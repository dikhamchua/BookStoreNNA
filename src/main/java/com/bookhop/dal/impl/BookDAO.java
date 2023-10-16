/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookhop.dal.impl;

import com.bookhop.dal.GenericDAO;
import com.bookhop.entity.Book;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BookDAO extends GenericDAO<Book>{

    @Override
    public List<Book> findAll() {
       return queryGenericDAO(Book.class);
    }

    @Override
    public int insert(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
