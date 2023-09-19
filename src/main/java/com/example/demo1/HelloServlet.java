package com.example.demo1;

import java.io.*;
import java.util.ArrayList;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    //tao mang doi tuong
    private static ArrayList<product> list;

    public void init() {
        list = new ArrayList<>();

        //them doi tuong vao mang
        list.add(new product("Iphone 15","35.000.000","https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/i/p/iphone-15-pro-max_2__5.jpg"));
        list.add(new product("Iphone 14","30.000.000","https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_m_18.png"));
        list.add(new product("Iphone 13","25.000.000","https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/4/14_1_9_2_9.jpg"));
        list.add(new product("Iphone 12","20.000.000","https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/2/_/2_241_2.jpg"));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //tao doi tuong session
        HttpSession session = request.getSession();
        session.setAttribute("list",list);

        //truyen duong dan
        response.sendRedirect("listProduct.jsp");
    }

    public void destroy() {
    }
}