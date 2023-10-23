/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookhop.dal.impl;

import com.bookhop.dal.GenericDAO;
import com.bookhop.entity.Book;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BookDAO extends GenericDAO<Book> {

    @Override
    public List<Book> findAll() {
        return queryGenericDAO(Book.class);
    }

    @Override
    public int insert(Book t) {
        return insertGenericDAO(t);
    }

    /**
     * Tìm về các quyển sách dựa trên field và chứa value mong muốn
     *
     * @param field: trường dữ liệu mong muốn tìm kiếm
     * @param value: giá trị của trường dữ liệu
     * @return danh sách các quyển sách
     */
    public List<Book> findContainsByProperty(String field, String value) {
        String sql = "select * from Book \n"
                + "where " + field + " like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + value + "%");
        return queryGenericDAO(Book.class, sql, parameterMap);
    }

    public void updateBook(Book book) {
        String sql = "UPDATE [dbo].[Book]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] = ?\n"
                + " WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", book.getName());
        parameterMap.put("image", book.getImage());
        parameterMap.put("quantity", book.getQuantity());
        parameterMap.put("price", book.getPrice());
        parameterMap.put("description", book.getDescription());
        parameterMap.put("id", book.getId());
        updateGenericDAO(sql, parameterMap);
    }

    public void deleteBook(int id) {
        String sql = "DELETE FROM [dbo].[Book]\n"
                + "      WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        deleteGenericDAO(sql, parameterMap);
    }

    public Book findById(int id) {
        String sql = "select * from Book where id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        List<Book> list = queryGenericDAO(Book.class, sql, parameterMap);
        return list.isEmpty()
                ? null
                : list.get(0);
    }

}
