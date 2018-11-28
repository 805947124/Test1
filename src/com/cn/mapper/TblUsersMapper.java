package com.cn.mapper;

import com.cn.entity.TblUsers;

public interface TblUsersMapper {
  public TblUsers selectByNameFun(String name);
  
  public void insertFun(TblUsers tblUsers);
}
