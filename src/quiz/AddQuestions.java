package quiz;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.scene.control.Alert;

/**
 * Servlet implementation class AddQuestions
 */
@WebServlet("/AddQuestions")
public class AddQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuestions() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Question question=new Question();
		question.setQuestionId(Integer.parseInt(request.getParameter("questionID")));
		question.setQuestion(request.getParameter("question"));
		question.setOption1(request.getParameter("option1"));
		question.setOption2(request.getParameter("option2"));
		question.setOption3(request.getParameter("option3"));
		question.setOption4(request.getParameter("option4"));
		question.setRightAnswer(request.getParameter("rightoption"));
		QuestionService.addQuestion(question);
		RequestDispatcher rd=request.getRequestDispatcher("insertedmsg.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
