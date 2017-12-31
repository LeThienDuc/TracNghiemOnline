package Controler;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ColtrolerDeleteUser")
public class ColtrolerDeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String id;
    public ColtrolerDeleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 id = request.getParameter("ID");
		try {
			new Models.ConnDB().ThucThiCauLenhSQL("delete from tbl_user where UserID='"+id+"';");
			response.sendRedirect("Admin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println("Loi roi");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
