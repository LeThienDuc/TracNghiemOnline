package Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.AccountDAO;
import Models.Model_User;
import Controler.RandID;

@WebServlet("/ControlerDangKi")
public class ControlerDangKi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String rl1,gt1,cl1, img="img/avt.jpg",id;
	public ControlerDangKi() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); // De Go Duoc Tieng Viet Khi Vao Modal Them
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();  
		int index =RandID.rand();
		id=Integer.toString(index);
		String username =request.getParameter("Tendangnhap");
		String pass =request.getParameter("password");
		String name =request.getParameter("hovaten");
		String mail =request.getParameter("email");
		String sn =request.getParameter("Ngaysinh");


		String gt =request.getParameter("GioiTinh");
		if(gt.equals("Men"))
		{
			gt1="Men";
		}
		else
			gt1="Women";

		String cl =request.getParameter("ClassID");
		if(cl.equals("CL0"))
			cl1="CL0";
		else if(cl.equals("CL1"))
			cl1="CL1";
		else if(cl.equals("CL2"))
			cl1="CL2";
		else if(cl.equals("CL3"))
			cl1="CL3";
		else
			cl1="CL4";
		String rl=request.getParameter("Role");
		if(rl.equals("QLKT"))
			rl1="QLKT";
		else if(rl.equals("HOCS"))
			rl1="HOCS";
		else
			rl1="QLCH";
		try {
			ResultSet rs = new Models.ConnDB().chonDuLieu("select * from tbl_user");
			new Models.ConnDB().ThucThiCauLenhSQL("insert into tbl_user values('"+id+"','"+username+"','"+pass+"','"+name+"','"+mail+"','"+sn+"','"+gt1+"', '"+cl1+"','"+rl1+"','"+img+"');");
			ServletContext context = getServletContext();
			context.setAttribute("UsUserID", id);
			context.setAttribute("Name", name);
			context.setAttribute("Emaill", mail);
			context.setAttribute("imgAvatar", img);
			if(rl1.equals("QLKT"))
			{
				response.sendRedirect("TrangCaNhan_GV.jsp");
			}
			else if(rl1.equals("HOCS"))
			{
				response.sendRedirect("TrangCaNhan_HS.jsp");
			}
			else
			{
				response.sendRedirect("TrangCaNhan_QLCH.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
