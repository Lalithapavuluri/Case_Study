package com.servlet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servlet.dao.BookDao;
import com.servlet.modal.BookDetails;

/**
 * Servlet implementation class BookController
 */
@WebServlet({"/"})
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private BookDao bookDao;
    
    public void init() {
    	bookDao = new BookDao();
    }
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		
		 String action = request.getServletPath();
		 try {
	            switch (action) {
	                case "/savebookinform":
	                	savebookinform(request, response);
	                    break;
	                     case "/listofbooks":
	                	listofbooks(request, response);
	                    break;
	                    /*case "/delete":
	                    deleteUser(request, response);
	                    break;
	                case "/edit":
	                    showEditForm(request, response);
	                    break;
	                case "/update":
	                    updateUser(request, response);
	                    break;
	                default:
	                    listofbooks(request, response);
	                    break;*/
	            }
	        } catch (Exception ex) {
	            throw new ServletException(ex);
	        }
	}

	private void listofbooks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.List <BookDetails> bookslist = bookDao.listofbooks();
        request.setAttribute("bookslist", bookslist);
        javax.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("showBooks.jsp");
        dispatcher.forward(request, response); 
		
		
	}

	private void savebookinform(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String bname = request.getParameter("bname");
        String bsubject = request.getParameter("bsubject");
        String bauthor = request.getParameter("bauthor");
        int bprice =Integer.parseInt(request.getParameter("bprice"));
        int quantity =Integer.parseInt(request.getParameter("quantity"));
        BookDetails bookdetails = new BookDetails(bname, bsubject, bauthor,bprice,quantity);
        bookDao.saveBook(bookdetails,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
