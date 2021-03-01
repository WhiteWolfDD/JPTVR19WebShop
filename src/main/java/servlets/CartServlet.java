package servlets;

import entity.*;
import session.*;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "CartServlet", urlPatterns = {
        "/addToBag",
        "/showCartList",
})

public class CartServlet extends HttpServlet {

    @EJB
    private ProductFacade productFacade;
    @EJB
    private BuyerFacade buyerFacade;
    @EJB
    private HistoryFacade historyFacade;
    @EJB
    private UserFacade userFacade;
    @EJB
    private UserRolesFacade userRolesFacade;
    @EJB
    private CoverFacade coverFacade;
    @EJB
    private CartFacade cartFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> listProducts = productFacade.findAll();
        request.setAttribute("listProducts", listProducts);

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession httpSession = request.getSession(false);

        if (httpSession == null) {
            request.setAttribute("info", "У вас нет права использовать этот ресурс. Войдите!");
            request.getRequestDispatcher("/loginForm").forward(request, response);
            return;
        }
        User user = (User) httpSession.getAttribute("user");
        if (user == null) {
            request.setAttribute("info", "У вас нет права использовать этот ресурс. Войдите!");
            request.getRequestDispatcher("/loginForm").forward(request, response);
            return;
        }
        boolean isRole = userRolesFacade.isRole("BUYER", user);
        if (!isRole) {
            request.setAttribute("info", "У вас нет права использовать этот ресурс. Войдите с соответствующими правами!");
            request.getRequestDispatcher("/loginForm").forward(request, response);
            return;
        }

        String path = request.getServletPath();
        switch (path) {
            case "/addToBag":

                List<Product> listProducts = productFacade.findAll();

                String productId = request.getParameter("productId");

                Product product = productFacade.find(Long.parseLong(productId));

                List<Cart> cartList = cartFacade.findCartProducts(product);

                request.setAttribute("info", "Товар добавлен в корзину.");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("listProducts")).forward(request, response);

            case "/showCartList":

                request.getRequestDispatcher(LoginServlet.pathToFile.getString("listProducts")).forward(request, response);
                break;

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}