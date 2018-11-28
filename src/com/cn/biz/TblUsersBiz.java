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
	 * txx ע�Ṧ��
	 * 
	 * @param tblUsers
	 *            �û���Ϣ
	 * @return true:ע��ɹ� false:ʧ��
	 */
	public boolean register(TblUsers tblUsers) {
		try {
			tblUsersMapper.insertFun(tblUsers);

			return true;
		} catch (Exception e) {
			System.out.println("ע��ʧ��");
			e.printStackTrace();

			return false;
		}
	}

	/**
	 * ��¼
	 * 
	 * @param name
	 *            �û���
	 * @param password
	 *            ����
	 * @return �û���Ϣ null���û������������
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
