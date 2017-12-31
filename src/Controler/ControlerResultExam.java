package Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ControlerResultExam")
public class ControlerResultExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ControlerResultExam() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String UserID	= request.getParameter("UserID");
		String ExamID	= request.getParameter("ExamID");
		String[] dapan =new String[20];int i=0,mark=0;
		try {
			ResultSet rs= new Models.ConnDB().chonDuLieu("select * from tbl_user, examquestion,examclass, question where tbl_user.UserID='"+UserID+"' and tbl_user.ClassID= examclass.ClassID and examquestion.ExamID='"+ExamID+"' and examclass.ExamID='"+ExamID+"' and examquestion.QuestionID= question.QuestionID;");
			while(rs.next())
			{
				dapan[i]=request.getParameter(rs.getString(15));
				if(dapan[i].equals(rs.getString(22))){
						mark++;
						}
				i++;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String marks= Integer.toString(mark);
		int ResultExamID= RandID.ResultExam();
		try {
			ResultSet rs1=new Models.ConnDB().chonDuLieu("select * from resultexam where ExamID='"+ExamID+"'and UserID='"+UserID+"';");
			if(rs1.next()) {
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				out.println("<html>\r\n" + 
						"    <head>\r\n" + 
						"        <title>Thong Bao</title>\r\n" + 
						"      	<script language=\"javascript\">\r\n" + 
						"        	confirm(\"You are finish this exam before\");\r\n" + 
						"        </script>\r\n <meta http-equiv='refresh' content='0.5;url=http://localhost:8080/Project_TracNghiemOnline/XemDiem.jsp'>"+ 
						"    </head>\r\n" + 
						"    <body> \r\n" + 
						"               " +
						"        \r\n" + 
						"    </body>\r\n" + 
						"</html>");
				//response.sendRedirect("XemDiem.jsp");
			}
			else {
				new Models.ConnDB().ThucThiCauLenhSQL("insert into resultexam set RsID="+ResultExamID+", UserID='"+UserID+"',ExamID = '"+ExamID+"',Marks='"+marks+"'");
				response.sendRedirect("XemDiem.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
