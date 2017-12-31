package Controler;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControlerChuyenXemDiem
 */
@WebServlet("/ControlerChuyenXemDiem")
public class ControlerChuyenXemDiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ControlerChuyenXemDiem() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String	UserID=request.getParameter("UserID");
	String ExamID =request.getParameter("ExamID");
	response.setContentType("text/html");
	ServletContext context = getServletContext();
	context.setAttribute("UserID", UserID);
	context.setAttribute("ExamID", ExamID);
	response.sendRedirect("XemDiem.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
