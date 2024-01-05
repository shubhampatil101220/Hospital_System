package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBConnect;
@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String comment=req.getParameter("comment");
			
			AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
			
			HttpSession session =req.getSession();
			if(dao.updateCommentStatus(id, did, comment)) {
				session.setAttribute("sucMsg", "Comment Added");
				resp.sendRedirect("doctor/view_patient.jsp");
			}else {
				session.setAttribute("errMsg","Something went wrong on Database");
				resp.sendRedirect("doctor/view_patient.jsp");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
}
