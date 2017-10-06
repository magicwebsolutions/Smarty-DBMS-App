package settings;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListCustomer
 */
@WebServlet("/ListCustomer")
public class ListCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("DO GET...");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost*************************");
		String event ="";
		StringBuffer itemBuffer = new StringBuffer();
		
		try{
			event = request.getParameter("Event");
			
			if(event.equalsIgnoreCase("LISTCUSTOMER")){
				System.out.println("Heyeyeyeyeyeye it came inside handler");
				response.setContentType("text/plain");
				PrintWriter out = response.getWriter();
				ListCustomerDAO CustDAO = new ListCustomerDAO();				
				itemBuffer.append(CustDAO.ListCustomer());
				System.out.println("itemBuffer-->"+itemBuffer);
				out.println(itemBuffer.toString());			
			}
			
		}catch(Exception e){
			System.out.println("Something went wrong...."+e);
			e.printStackTrace();
			
		}
		
		
	}

}
