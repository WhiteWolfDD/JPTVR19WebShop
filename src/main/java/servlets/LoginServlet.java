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
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name = "LoginServet", urlPatterns = {
        "/loginForm",
        "/login",
        "/logout",
        "/registrationForm",
        "/registration",
})

public class LoginServlet extends HttpServlet {

    @EJB
    private UserFacade userFacade;
    @EJB
    private BuyerFacade buyerFacade;
    @EJB
    private ProductFacade productFacade;
    @EJB
    private RoleFacade roleFacade;
    @EJB
    private UserRolesFacade userRolesFacade;
    public static final ResourceBundle pathToFile = ResourceBundle.getBundle("property/pathToFile");

    @Override
    public void init() throws ServletException {
        if (userFacade.findAll().size() > 0) return;
        Buyer buyer = new Buyer("Kirill", "Goritski", Integer.parseInt(String.valueOf(10000)), "kirill.goritski@ivkhk.ee");
        buyerFacade.create(buyer);
        User user = new User("admin", "admin", buyer);
        userFacade.create(user);
        Role role = new Role("ADMIN");
        roleFacade.create(role);
        UserRoles userRoles = new UserRoles(user, role);
        userRolesFacade.create(userRoles);
        role = new Role("MANAGER");
        roleFacade.create(role);
        userRoles = new UserRoles(user, role);
        userRolesFacade.create(userRoles);
        role = new Role("BUYER");
        roleFacade.create(role);
        userRoles = new UserRoles(user, role);
        userRolesFacade.create(userRoles);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> listProducts = productFacade.findAll();
        request.setAttribute("listProducts", listProducts);

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();
        switch (path) {
            case "/loginForm":
                request.setAttribute("activeEnter", "true");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("login")).forward(request, response);
                break;

            case "/login":
                String login = request.getParameter("login");
                String password = request.getParameter("password");

                User user = userFacade.findByLogin(login);
                if (user == null) {
                    request.setAttribute("info", "Нет такого пользователя");
                    request.getRequestDispatcher("/loginForm").forward(request, response);
                    break;
                }

                HttpSession httpSession = request.getSession(true);
                httpSession.setAttribute("user", user);
                request.setAttribute("info", "Добро пожаловать " + " \"" + user.getLogin() + "\"" + "!");

                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/logout":
                httpSession = request.getSession(false);
                if (httpSession != null) {
                    httpSession.invalidate();
                }

                request.setAttribute("info", "Вы вышли.");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/registrationForm":
                request.setAttribute("activeRegistration", "true");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("registration")).forward(request, response);
                break;

            case "/registration":
                String name = request.getParameter("name");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String money = request.getParameter("money");
                login = request.getParameter("login");
                password = request.getParameter("password");

                Buyer buyer = new Buyer(name, lastname, Integer.parseInt(money), email);
                buyerFacade.create(buyer);
                user = new User(login, password, buyer);
                userFacade.create(user);

                httpSession = request.getSession(true);
                httpSession.setAttribute("user", user);

                // Добавление полей
                Role roleBuyer = roleFacade.findByName("BUYER");
                UserRoles userRoles = new UserRoles(user, roleBuyer);
                userRolesFacade.create(userRoles);

                request.setAttribute("checkRole", "3");
                request.setAttribute("info",
                        "Пользователь " + user.getLogin() + " добавлен"
                );
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
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
