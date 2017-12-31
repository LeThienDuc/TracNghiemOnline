package Models;

public class Model_Account implements java.io.Serializable {
	public static final long serialVersionUID = 1L;
	public String AccID;
	public String PassWord;
	public String RoleID;
	public String UserName;
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getAccID() {
		return AccID;
	}
	public void setAccID(String accID) {
		AccID = accID;
	}
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	public String getRoleID() {
		return RoleID;
	}
	public void setRoleID(String roleID) {
		RoleID = roleID;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
