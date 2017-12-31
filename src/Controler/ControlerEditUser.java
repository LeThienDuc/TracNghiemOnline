package Controler;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerEditUser")
public class ControlerEditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String hoten="";
	String dcMail="";
	String sn="";
	String Sex="";
	String Malop="";
	public static String Id;
    public ControlerEditUser() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.sendRedirect("EditUser.jsp");
		Id=request.getParameter("ID");
		ResultSet rs;
		try {
			rs=new Models.ConnDB().chonDuLieu("select * from tbl_user where UserID ='"+Id+"'");
			while (rs.next())
			{
				hoten=rs.getString(4);
				dcMail=rs.getString(5);
				sn=rs.getString(6);
				Sex=rs.getString(7);
				Malop=rs.getString(8);
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("hoten", hoten);
			context.setAttribute("dcMail", dcMail);
			context.setAttribute("sn", sn);
			context.setAttribute("Sex", Sex);
			context.setAttribute("Malop", Malop);
			
			context.setAttribute("ID",Id);
			response.sendRedirect("EditUser.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String hoten=request.getParameter("hovaten");
		String dcMail=request.getParameter("email");
		String sn=request.getParameter("Ngaysinh");
		String Sex=request.getParameter("GioiTinh");
		String Malop=request.getParameter("ClassID");
		response.setContentType("text/html");
		ServletContext context = getServletContext();
		String id=(String) context.getAttribute("ID");
		//new MyConnectDB().thucThiCauLenhSQL("update ThanhVien set stt='"+stt+"',Ho='"+ho+"',Ten='"+ten+"',TaiKhoan='"+tk+"' where stt='"+stt+"'");
		try {
			new Models.ConnDB().ThucThiCauLenhSQL("update tbl_user set Name ='"+hoten+"',Email ='"+dcMail+"', NgaySinh='"+sn+"',GioiTinh='"+Sex+"',ClassID='"+Malop+"' where UserID='"+id+"' ");
			response.sendRedirect("Admin.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}