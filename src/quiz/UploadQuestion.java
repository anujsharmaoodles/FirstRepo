package quiz;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UploadQuestion
 */
@WebServlet("/UploadQuestion")
public class UploadQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String filename=request.getParameter("file");
		if(filename.endsWith(".csv")) {
			QuestionService.readCsvFile();
			RequestDispatcher rd=request.getRequestDispatcher("uploadedmsg.jsp");
			rd.forward(request, response);
			
		}
		 else if(filename.endsWith(".json")) {
			 QuestionService.readJsonFile();
			 RequestDispatcher rd=request.getRequestDispatcher("uploadedmsg.jsp");
				rd.forward(request, response);
		 }
		 else {
			 RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
		 }
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
