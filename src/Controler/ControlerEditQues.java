package Controler;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerEditQues")
public class ControlerEditQues extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String QuestionContent ="";
	String SubID="";
	String  A="";String  B="";String  C="";String  D="";
	String Answer="";
	String QuestionID="";
    public ControlerEditQues() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuestionID=request.getParameter("ID");
		ResultSet rs;
		try {
			rs=new Models.ConnDB().chonDuLieu("select * from question where QuestionID ='"+QuestionID+"'");
			while (rs.next())
			{
				QuestionContent=rs.getString(2);
				SubID          =rs.getString(3);
				A              =rs.getString(4);
				B			   =rs.getString(5);
				C			   =rs.getString(6);
				D			   =rs.getString(7);
				Answer		   =rs.getString(8);	
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("QuestionContent", QuestionContent);
			context.setAttribute("SubID", SubID);
			context.setAttribute("A", A);
			context.setAttribute("B", B);
			context.setAttribute("C", C);
			context.setAttribute("D", D);
			context.setAttribute("Answer", Answer);
			
			context.setAttribute("QuestionID", QuestionID);
			response.sendRedirect("EditQues.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		String QuestionContent =request.getParameter("QuestionContent");
		String SubID=request.getParameter("SubID");
		String  A =request.getParameter("A");
		String  B =request.getParameter("B");
		String  C =request.getParameter("C");
		String  D =request.getParameter("D");
		String Answer =request.getParameter("Answer");
		ServletContext context = getServletContext();
		String QuestionID=(String) context.getAttribute("QuestionID");
		
		new Models.ConnDB().ThucThiCauLenhSQL("update question set QuestionContent ='"+QuestionContent+"',"
				+ "SubID ='"+SubID+"', "
						+ "A='"+A+"',"
								+ "B='"+B+"',C='"+C+"',D ='"+D+"',Answer ='"+Answer+"' where QuestionID='"+QuestionID+"' ");
		response.sendRedirect("QuanLiCauHoi.jsp");
	}

}
