package com.epam.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String answer;

        try {
            double numOne = Double.parseDouble(request.getParameter("numOne"));
            double numTwo = Double.parseDouble(request.getParameter("numTwo"));
            String operation = request.getParameter("operation");

            if(operation==null)operation="";

            switch (operation) {
                case "add":
                    answer = String.valueOf(numOne + numTwo);
                    break;
                case "sub":
                    answer = String.valueOf(numOne - numTwo);
                    break;
                case "mul":
                    answer = String.valueOf(numOne * numTwo);
                    break;
                case "div":
                    answer = String.valueOf(numOne / numTwo);
                    break;
                default:
                    answer = "Operation don`t select";
            }
        }catch (ArithmeticException e){
            answer = "Error calculation";
        }catch (NumberFormatException e){
            answer = "Wrong number format";
        }
        request.setAttribute("answer", answer);
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }

}
