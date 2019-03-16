package services;

import entity.Admin;
import entity.User;

public interface AdminDao {
	boolean userLogin(Admin admin);
}
