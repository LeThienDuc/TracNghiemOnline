package Models;

public class Model_Role implements java.io.Serializable {
	public static final long serialVersionUID = 1L;
	public String AccID;
	public String RoleName;
	
	public String getAccID() {
		return AccID;
	}
	public void setAccID(String accID) {
		AccID = accID;
	}
	public String getRoleName() {
		return RoleName;
	}
	public void setRoleName(String roleName) {
		RoleName = roleName;
	}
}
