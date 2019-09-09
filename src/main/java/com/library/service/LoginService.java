package com.library.service;

import com.library.domain.Admin;
import com.library.domain.Reader;

public interface LoginService {
    Admin findAdmin(String username,String password);

    Reader findReader(String username,String password);
}
