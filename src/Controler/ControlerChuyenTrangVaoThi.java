package Controler;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerChuyenTrangVaoThi")
public class ControlerChuyenTrangVaoThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String UserID="";String ExamID="";
 
    public ControlerChuyenTrangVaoThi() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserID=request.getParameter("UserID");
		ExamID=request.getParameter("ExamID");
		response.setContentType("text/html");
		ServletContext context = getServletContext();
		context.setAttribute("UserID", UserID);
		context.setAttribute("ExamID", ExamID);
		response.sendRedirect("VaoThi.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
