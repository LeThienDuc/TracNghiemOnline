package Models;

import java.awt.List;
import java.sql.Date;

public class Model_User<Model_user> {
	public String UserID;
	public String UserName;
	public String Password;
	public String RoleID;
	public String imgAvatar;
	public String getImgAvatar() {
		return imgAvatar;
	}
	public void setImgAvatar(String imgAvatar) {
		this.imgAvatar = imgAvatar;
	}
	public String getRoleID() {
		return RoleID;
	}
	public void setRoleID(String roleID) {
		RoleID = roleID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String Name;
	public String Email;
	public String NgaySinh;
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public String GioiTinh;
	public String ClassID;
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public Model_User(String userID, String userName, String password, String roleID, String name, String email,
			String ngaySinh, String gioiTinh, String classID) {
		super();
		UserID = userID;
		UserName = userName;
		Password = password;
		
		Name = name;
		Email = email;
		NgaySinh = ngaySinh;
		GioiTinh = gioiTinh;
		ClassID = classID;
		RoleID = roleID;
	}
	public String getClassID() {
		return ClassID;
	}
	public void setClassID(String classID) {
		ClassID = classID;
	}
}
