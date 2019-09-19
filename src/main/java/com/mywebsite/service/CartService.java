package com.mywebsite.service;

import com.mywebsite.model.Cart;

public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
