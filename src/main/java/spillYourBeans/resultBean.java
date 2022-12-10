package spillYourBeans;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class resultBean
 */
@WebServlet("/resultBean")
public class resultBean extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public resultBean() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String sad_question = "잊어버리고 싶은 오늘의 안좋은 일을 털어놔주세요!";
		String soso_question = "내일 일어났으면 하는 일을 얘기해주세요!";
		String happy_question = "행복했던 일을 공유해주세요!";
//		String name = request.getParameter("name");
//		String what_text = request.getParameter("what");
//		String when_text = request.getParameter("when");
//		String why_text = request.getParameter("why");
		//System.out.println(what_text);
//		request.setAttribute("name", name);
//		request.setAttribute("what", what_text);
//		request.setAttribute("when", when_text);
//		request.setAttribute("why", why_text);
		String emotion = request.getParameter("emotion");
		System.out.println(emotion);
		request.setAttribute("emotion", emotion);
		switch(emotion) {
		case "sad":
			request.setAttribute("question", sad_question);
			getServletContext().getRequestDispatcher("/bamboo_1/quenstions.jsp").forward(request, response);
			break;
		case "soso": 
			request.setAttribute("question", soso_question);
			getServletContext().getRequestDispatcher("/bamboo_1/quenstions.jsp").forward(request, response);
			break;
		case "happy": 
			request.setAttribute("question", happy_question);
			getServletContext().getRequestDispatcher("/bamboo_1/quenstions.jsp").forward(request, response);
			break;
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
