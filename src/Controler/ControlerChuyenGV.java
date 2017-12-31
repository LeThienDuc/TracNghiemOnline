package Controler;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerChuyenGV")
public class ControlerChuyenGV extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String Id="";
    public ControlerChuyenGV() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Id=request.getParameter("UserID");
		ServletContext context = getServletContext();
		context.setAttribute("UserID", Id);
		response.sendRedirect("QuanLiKiThi.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
