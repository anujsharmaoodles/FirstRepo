package quiz;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchResult
 */
@WebServlet("/SearchResult")
public class SearchResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Question question=new Question();
		if(request.getParameter("questionID")!=null && !request.getParameter("questionID").isEmpty()){
		question.setQuestionId(Integer.parseInt(request.getParameter("questionID")));
		}
		question.setQuestion(request.getParameter("questionDescription"));
		question.setOption1(request.getParameter("option1"));
		question.setOption2(request.getParameter("option2"));
		question.setOption3(request.getParameter("option3"));
		question.setOption4(request.getParameter("option4"));
		System.out.println(question.getQuestionId());
		List<Question> questions= QuestionService.searchQuestion(question);
		RequestDispatcher rd=request.getRequestDispatcher("resultdisplay.jsp");
				request.setAttribute("resultList", questions);
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
