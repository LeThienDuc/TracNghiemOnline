package Controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerAddExam")
public class ControlerAddExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ControlerAddExam() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8"); // De Go Duoc Tieng Viet Khi Vao Modal Them
		request.setCharacterEncoding("utf-8");
	
		int index = Controler.RandID.randExam();
		String ExamName 	= request.getParameter("ExamName");
		String TimeText 	= request.getParameter("TimeText");
		String SubID 		= request.getParameter("SubID");
		String TimeOpen		= request.getParameter("TimeOpen");
		String TimeClose 	= request.getParameter("TimeClose");
		String sum 			= request.getParameter("SumQuestion"); int SumQuestion= Integer.parseInt(sum);
		String ExamID 		= Integer.toString(index);
		String UserID		= request.getParameter("UserID");
		
		try {
			new Models.ConnDB().ThucThiCauLenhSQL("insert into exam values('"+ExamID+"','"+ExamName+"','"+SubID+"','"+TimeText+"','"+TimeOpen+"','"+TimeClose+"','"+SumQuestion+"','"+UserID+"');");
			response.sendRedirect("QuanLiKiThi.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); // De Go Duoc Tieng Viet Khi Vao Modal Them
		request.setCharacterEncoding("utf-8");
		
		int index			=Controler.RandID.randExam();
		String ExamName 	=request.getParameter("ExamName");
		String TimeText 	=request.getParameter("TimeText");
		String SubID 		=request.getParameter("SubID");
		String TimeOpen 	=request.getParameter("TimeOpen");
		String TimeClose 	=request.getParameter("TimeClose");
		String SumQuestion 	=request.getParameter("SumQuestion");int SumQuestion1=Integer.parseInt(SumQuestion);
		String ExamID 		=Integer.toString(index);
		String UserID		=request.getParameter("UserID");
		String ClassID		=request.getParameter("ClassID");
		
		try {
			new Models.ConnDB().ThucThiCauLenhSQL("insert into exam values('"+ExamID+"','"+ExamName+"','"+SubID+"','"+TimeText+"','"+TimeOpen+"','"+TimeClose+"','"+SumQuestion+"','"+UserID+"');");
			new Models.ConnDB().ThucThiCauLenhSQL("insert into examclass values('"+ExamID+"','"+ClassID+"');");
			new Models.ConnDB().ThucThiCauLenhSQL("insert into examquestion (QuestionID,ExamID) select QuestionID,ExamID from exam, question where exam.ExamID='"+ExamID+"' and question.SubID='"+SubID+"'limit "+SumQuestion1+";");
			response.sendRedirect("QuanLiKiThi.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
