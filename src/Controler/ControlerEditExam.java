package Controler;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerEditExam")
public class ControlerEditExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String ExamID="";String ExamName=""; String SubID=""; String TimeText="";String TimeOpen="";String TimeClose=""; int Sumquestion; String UserID="";
    String ClassID="";
	public ControlerEditExam() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExamID=request.getParameter("ID");
		//UserID =request.getParameter("UserID");
		ResultSet rs, rs1;
		try {
			rs=new Models.ConnDB().chonDuLieu("select * from exam where exam.ExamID ='"+ExamID+"'");
			while(rs.next())
			{
				ExamName	=	rs.getString(2);
				SubID		=	rs.getString(3);
				TimeText	=	rs.getString(4);
				TimeOpen	=	rs.getString(5);
				TimeClose	=	rs.getString(6);
				Sumquestion	=	rs.getInt(7);
				UserID		=	rs.getString(8);
			}
			String Sumquestion1 = Integer.toString(Sumquestion);
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("ExamName", ExamName);
			context.setAttribute("SubID", SubID);
			context.setAttribute("TimeText", TimeText);
			context.setAttribute("TimeOpen", TimeOpen);
			context.setAttribute("TimeClose", TimeClose);
			context.setAttribute("SumQuestion", Sumquestion);
			context.setAttribute("ExamID", ExamID);
			context.setAttribute("UserID", UserID);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			rs1=new Models.ConnDB().chonDuLieu("select * from examclass where ExamID ='"+ExamID+"'");
			while(rs1.next())
			{
				ClassID=rs1.getString(2);
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("ClassID", ClassID);
			response.sendRedirect("EditExam.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		String ExamName 	= request.getParameter("ExamName");
		//String SubID 		= request.getParameter("SubID");
		String TimeText 	= request.getParameter("TimeText");
		String TimeOpen	 	= request.getParameter("TimeOpen");
		String TimeClose 	= request.getParameter("TimeClose");
		String SumQuestion 	= request.getParameter("SumQuestion");
		String ClassID		= request.getParameter("ClassID");
		//String UserID 		= request.getParameter("UserID");
		ServletContext context = getServletContext();
		String ExamID 		=(String)	context.getAttribute("ExamID");
		
		new Models.ConnDB().ThucThiCauLenhSQL("update exam set ExamName='"+ExamName+"', TimeText='"+TimeText+"',TimeOpen='"+TimeOpen+"',TimeClose='"+TimeClose+"',"
				+"SumQuestion='"+SumQuestion+"' where ExamID='"+ExamID+"'");
		new Models.ConnDB().ThucThiCauLenhSQL("update examclass set ClassID='"+ClassID+"'where ExamID='"+ExamID+"'");
		response.sendRedirect("QuanLiKiThi.jsp");
	}

}
