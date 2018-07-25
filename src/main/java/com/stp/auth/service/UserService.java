package com.stp.auth.service;

import com.stp.auth.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
