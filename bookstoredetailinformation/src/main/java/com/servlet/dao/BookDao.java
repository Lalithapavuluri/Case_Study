package com.servlet.dao;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.servlet.modal.BookDetails;

public class BookDao {

	

	public void saveBook(BookDetails bookdetails,HttpServletResponse response) throws IOException {
		Configuration cfg=new Configuration();
	      cfg.configure("hibernate.cfg.xml");
	      SessionFactory factory=cfg.buildSessionFactory();
	      Session session=factory.openSession();
	      Transaction tx=session.beginTransaction();
	      session.save(bookdetails); 
	      System.out.print("\nbook details saved successfully..");
	      tx.commit();
	      session.close();
	      factory.close();
	      response.sendRedirect("adminindex.jsp");
		   
	}

	public List<BookDetails> listofbooks() {
		
		Configuration cfg=new Configuration();
	      cfg.configure("hibernate.cfg.xml");
	      SessionFactory factory=cfg.buildSessionFactory();
	      Session session=factory.openSession();
	      Transaction tx=session.beginTransaction();
	            // start a transaction
	            tx = session.beginTransaction();
	            // get an user object

	            List<BookDetails>  bookslist = session.createQuery("from booksinfo").getResultList();

	            // commit transaction
	            tx.commit();
	            session.close();
	  	      factory.close();
	            
	        return bookslist;
		
	}

}
