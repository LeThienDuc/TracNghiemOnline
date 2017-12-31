package Controler;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ColtrolerDeleteQues")
public class ColtrolerDeleteQues extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String iid;
    public ColtrolerDeleteQues() {
        super();
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		iid = request.getParameter("ID");
		try {
			new Models.ConnDB().ThucThiCauLenhSQL("delete from question where QuestionID='"+iid+"';");
			response.sendRedirect("QuanLiCauHoi.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println("Loi roi");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
