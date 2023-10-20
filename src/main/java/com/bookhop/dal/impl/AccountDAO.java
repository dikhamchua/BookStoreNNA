/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookhop.dal.impl;

import com.bookhop.dal.GenericDAO;
import com.bookhop.entity.Account;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends GenericDAO<Account> {

    @Override
    public List<Account> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(Account t) {
        return insertGenericDAO(t);
    }

    public Account findByUsernamePassword(Account account) {
        String sql = "SELECT * FROM [Account]\n"
                + "WHERE username = ? and password = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", account.getUsername());
        parameterMap.put("password", account.getPassword());

        List<Account> list = queryGenericDAO(Account.class, sql,
                parameterMap);
        return list.isEmpty()
                ? null
                : list.get(0);
    }

    public boolean findByUsername(String username) {
        String sql = "SELECT * FROM [Account]\n"
                + "WHERE username = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", username);
        List<Account> list = queryGenericDAO(Account.class, sql,
                parameterMap);
        return !list.isEmpty();
    }

    public void updateProfile(Account account) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [email] = ?\n"
                + "      ,[address] = ?\n"
                + " WHERE username = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("email", account.getEmail());
        parameterMap.put("address", account.getAddress());
        parameterMap.put("username", account.getUsername());
        updateGenericDAO(sql, parameterMap);
    }

    public void updatePassword(String username, String password) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [password] = ?\n"
                + " WHERE username = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("password", password);
        parameterMap.put("username", username);
        updateGenericDAO(sql, parameterMap);
    }

}
