package Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.ConnDB;


@WebServlet("/ControlerLogin")
public class ControlerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id="";String Name="";String Email="";String NgaySinh;String GioiTinh;String imgAvatar="";String ClassID="";
    public ControlerLogin() {
        super();    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ResultSet rs;
		String username = request.getParameter("Tendangnhap");
		String userpass = request.getParameter("password");
		String RoleID   = request.getParameter("Role");
		String hs="HOCS";String ad="ADMI";String qlch="QLCH";String qlkt="QLKT";
		if(ConnDB.ConectnDB(username, userpass, RoleID))
		{
			try {
				rs= new Models.ConnDB().chonDuLieu("select * from tbl_user where UserName='"+username+"' AND Password='"+userpass+"'");
				while (rs.next())
				{
					id=rs.getString(1);
					Name=rs.getString(4);
					Email=rs.getString(5);
					NgaySinh=rs.getString(6);
					GioiTinh=rs.getString(7);
					ClassID=rs.getString(8);
					imgAvatar=rs.getString(10);
				}
				response.setContentType("text/html");
				ServletContext context = getServletContext();
				context.setAttribute("imgAvatar", imgAvatar);
				context.setAttribute("Name", Name);
				context.setAttribute("Emaill", Email);
				context.setAttribute("NgaySinh", NgaySinh);
				context.setAttribute("UserID", id);
				context.setAttribute("RoleID", RoleID);
				context.setAttribute("ClassID", ClassID);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(RoleID.equals(ad))
				response.sendRedirect("Admin.jsp");
			if(RoleID.equals(hs))
				response.sendRedirect("TrangCaNhan_HS.jsp");
			if(RoleID.equals(qlch))
				response.sendRedirect("TrangCaNhan_QLCH.jsp");
			if(RoleID.equals(qlkt))
				response.sendRedirect("TrangCaNhan_GV.jsp");
		}
		else
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			response.sendRedirect("Eror.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
