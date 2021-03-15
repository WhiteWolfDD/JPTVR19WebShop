package servlets;

import entity.Product;
import entity.User;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import session.ProductFacade;
import session.UserRolesFacade;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CarouselServlet", urlPatterns = {
        "/",
})

public class CarouselServlet extends HttpServlet {

    @EJB
    private ProductFacade productFacade;
    @EJB
    private UserRolesFacade userRolesFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = null;
        if (session != null) {
            user = (User) session.getAttribute("user");
        }

        request.setAttribute("role", userRolesFacade.getTopRoleForUser(user));
        List<Product> listProducts = productFacade.findAll();

        request.setAttribute("listProducts", listProducts);
        request.setAttribute("productCount", listProducts.size());
        request.getRequestDispatcher("/index.jsp").forward(request, response);
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