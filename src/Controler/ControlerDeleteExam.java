package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerDeleteExam")
public class ControlerDeleteExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id="";
       
  
    public ControlerDeleteExam() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("ID");
		new Models.ConnDB().ThucThiCauLenhSQL("delete from examquestion where ExamID='"+id+"'");
		new Models.ConnDB().ThucThiCauLenhSQL("delete from exam where ExamID='"+id+"';");
		new Models.ConnDB().ThucThiCauLenhSQL("delete from examclass where ExamID ='"+id+"';");

		response.sendRedirect("QuanLiKiThi.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
