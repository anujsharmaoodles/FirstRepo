package quiz;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updated
 */
@WebServlet("/Updated")
public class Updated extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updated() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	Question question=new Question();
	question.setQuestionId(Integer.parseInt(request.getParameter("id")));
	question.setQuestion(request.getParameter("questn"));
	question.setQuestion(request.getParameter("questn"));
	question.setOption1(request.getParameter("option1"));
	question.setOption2(request.getParameter("option2"));
	question.setOption3(request.getParameter("option3"));
	question.setOption4(request.getParameter("option4"));
	System.out.println("heheheheheh"+request.getParameter("questn"));
	QuestionService.updateQuestion(question);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
