package com.example.demo1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "cartServlet" , value = "/cart")
public class cartServlet extends HttpServlet {
    private static ArrayList<product> list;

    @Override
    public void init() throws ServletException {
        list = new ArrayList<>();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String image = req.getParameter("image");

        list.add(new product(name,price,image));

        HttpSession session = req.getSession();

        session.setAttribute("listCart" , list);

        req.getRequestDispatcher("listProduct.jsp").forward(req,resp);
    }
}
