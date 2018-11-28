package com.cn.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.entity.TblUsers;
import com.cn.mapper.TblUsersMapper;

@Service
public class TblUsersBiz {

	@Autowired
	private TblUsersMapper tblUsersMapper;

	/**
	 * txx 注册功能
	 * 
	 * @param tblUsers
	 *            用户信息
	 * @return true:注册成功 false:失败
	 */
	public boolean register(TblUsers tblUsers) {
		try {
			tblUsersMapper.insertFun(tblUsers);

			return true;
		} catch (Exception e) {
			System.out.println("注册失败");
			e.printStackTrace();

			return false;
		}
	}

	/**
	 * 登录
	 * 
	 * @param name
	 *            用户名
	 * @param password
	 *            密码
	 * @return 用户信息 null，用户名或密码错误
	 */
	public TblUsers login(String name, String password) {
		TblUsers tblUsers = tblUsersMapper.selectByNameFun(name);

		if (tblUsers != null && tblUsers.getPassword().equals(password)) {
			return tblUsers;
		} else {
			return null;
		}
	}

}
