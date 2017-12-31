package Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControlerAddQues")
public class ControlerAddQues extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ControlerAddQues() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); // De Go Duoc Tieng Viet Khi Vao Modal Them
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();  
		int index =RandID.randQES();
		
		String QuestionContent 	=	request.getParameter("QuestionContent");
		String SubID		 	=	request.getParameter("SubID");
		String  A 				=	request.getParameter("A");
		String  B 				=	request.getParameter("B");
		String  C 				=	request.getParameter("C");
		String  D 				=	request.getParameter("D");
		String Answer 			=	request.getParameter("Answer");
		String QuestionID 		=	Integer.toString(index);
		
		try {
			//ResultSet rs=new Models.ConnDB().chonDuLieu("select * from question");
			new Models.ConnDB().ThucThiCauLenhSQL("insert into question values( '"+QuestionID+"','"+QuestionContent+"','"+SubID+"','"+A+"','"+B+"','"+C+"','"+D+"','"+Answer+"');");
			response.sendRedirect("QuanLiCauHoi.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
