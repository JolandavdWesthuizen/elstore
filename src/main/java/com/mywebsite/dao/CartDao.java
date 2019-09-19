package com.mywebsite.dao;

import java.io.IOException;

import com.mywebsite.model.Cart;

public interface CartDao {

    Cart getCartById (int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
