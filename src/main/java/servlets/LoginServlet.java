package servlets;

import entity.*;
import jakarta.ejb.EJB;
import jakarta.ejb.EJBAccessException;
import jakarta.ejb.EJBException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import session.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name = "LoginServlet", urlPatterns = {
        "/loginForm",
        "/login",
        "/logout",
        "/registrationForm",
        "/registration",
        "/avatarUploadForm",
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
    @EJB
    private AvatarFacade avatarFacade;

    public static final ResourceBundle pathToFile = ResourceBundle.getBundle("property/pathToFile");

    @Override
    public void init() throws ServletException {
        if (userFacade.findAll().size() > 0) return;
        Buyer buyer = new Buyer("Vladislav", "Hodzhajev", Integer.parseInt(String.valueOf(10000)), "vladislav.hodzajev@ivkhk.ee", "Jõhvi", "56718277", "Nothing", "22.11.2002", "Soft Developer", "IVKHK", "Koidu 2V", "kutsehariduskeskus.ee", "White_Wolf_DD", "-", "4istogan_", "-", "vladikslavik", "White_Wolf_DD", null);
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
        HttpSession httpSession = request.getSession(false);

        User user = null;
        if (httpSession != null) {
            user = (User) httpSession.getAttribute("user");
        }

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String path = request.getServletPath();
        switch (path) {
            case "/loginForm":
                request.setAttribute("activeEnter", "true");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("login")).forward(request, response);
                break;

            case "/login":

                List<Product> cartList = new ArrayList<>();

                String login = request.getParameter("login");
                String password = request.getParameter("password");

                user = userFacade.findByLogin(login);
                if (user == null) {
                    request.setAttribute("info", "Нет такого пользователя");
                    request.getRequestDispatcher("/loginForm").forward(request, response);
                    break;
                }

                if (!password.equals(user.getPassword())) {
                    request.setAttribute("info", "Неверный логин или пароль!");
                    request.getRequestDispatcher("/loginForm").forward(request, response);
                }

                httpSession = request.getSession(true);
                httpSession.setAttribute("cartList", cartList);
                httpSession.setAttribute("user", user);

                request.setAttribute("info", "Добро пожаловать " + " \"" + user.getLogin() + "\"" + "!");
                request.setAttribute("role", userRolesFacade.getTopRoleForUser(user));
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/logout":
                httpSession = request.getSession(false);
                if (httpSession != null) {
                    httpSession.setAttribute("cartList", null);
                    httpSession.invalidate();
                }

                request.setAttribute("info", "Вы вышли из системы.");
                request.setAttribute("role", userRolesFacade.getTopRoleForUser(null));
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/registrationForm":
                request.setAttribute("activeRegistration", "true");
                List<Avatar> listAvatars = avatarFacade.findAll();
                request.setAttribute("listAvatars", listAvatars);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("registration")).forward(request, response);
                break;

            case "/registration":
                String name = request.getParameter("name");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String avatarId = request.getParameter("avatarId");
                login = request.getParameter("login");
                password = request.getParameter("password");
                String repeatPassword = request.getParameter("repeatPassword");

                Avatar avatar = avatarFacade.find(Long.parseLong(avatarId));

                try {
                    if (repeatPassword.equals(password)) {
                        Buyer buyer = new Buyer(name, lastname, null, email, null, null, null, null, null, null, null, null, null, null, null, null, null, null, avatar);
                        buyerFacade.create(buyer);
                        user = new User(login, password, buyer);
                        userFacade.create(user);
                    } else {
                        request.setAttribute("name", null);
                        request.setAttribute("lastname", null);
                        request.setAttribute("email", null);
                        request.setAttribute("avatarId", null);
                        request.setAttribute("login", null);
                        request.setAttribute("password", null);
                        request.setAttribute("repeatPassword", null);
                        request.setAttribute("info", "Неверный пароль.");
                        request.getRequestDispatcher("/registrationForm").forward(request, response);
                    }
                } catch (EJBException e) {
                    request.setAttribute("info", "Не удалось создать пользователя.");
                    request.getRequestDispatcher("/registrationForm").forward(request, response);
                }

                httpSession = request.getSession(true);
                httpSession.setAttribute("user", user);

                // Добавление полей
                Role roleBuyer = roleFacade.findByName("BUYER");
                UserRoles userRoles = new UserRoles(user, roleBuyer);
                userRolesFacade.create(userRoles);

                request.setAttribute("checkRole", "3");
                assert user != null;
                request.setAttribute("info",
                        "Пользователь " + '"' + user.getLogin() + '"' + " добавлен"
                );
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/avatarUploadForm":
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("avatarUpload")).forward(request, response);
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