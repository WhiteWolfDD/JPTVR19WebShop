package servlets;

import entity.Avatar;
import entity.Buyer;
import entity.Product;
import entity.User;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import session.*;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "ProfileServlet", urlPatterns = {
        "/checkProfile",
        "/editProfileForm",
        "/editProfile",
        "/checkBagListForm",
        "/checkBagList",
        "/checkQuestions",
        "/balanceReplenishmentForm",
})

public class ProfileServlet extends HttpServlet {

    @EJB
    private ProductFacade productFacade;
    @EJB
    private BuyerFacade buyerFacade;
    @EJB
    private HistoryFacade historyFacade;
    @EJB
    private UserRolesFacade userRolesFacade;
    @EJB
    private UserFacade userFacade;
    @EJB
    private AvatarFacade avatarFacade;

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

        request.setAttribute("role", userRolesFacade.getTopRoleForUser(user));
        String path = request.getServletPath();
        switch (path) {
            case "/checkProfile":
                Buyer buyer = buyerFacade.find(user.getBuyer().getId());
                request.setAttribute("buyer", buyer);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("buyerProfile")).forward(request, response);
                break;

            case "/editProfileForm":
                List<User> listUsers = userFacade.findAll();
                buyer = buyerFacade.find(user.getBuyer().getId());
                request.setAttribute("buyer", buyer);
                request.setAttribute("listUsers", listUsers);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("buyerProfileSettings")).forward(request, response);
                break;

            case "/editProfile":
                String name = request.getParameter("name");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String town = request.getParameter("town");
                String phoneNumber = request.getParameter("phoneNumber");
                String buyerDescription = request.getParameter("buyerDescription");
                String birthDate = request.getParameter("birthDate");
                String employee = request.getParameter("employee");
                String employeeCompany = request.getParameter("employeeCompany");
                String address = request.getParameter("address");
                String userWebsite = request.getParameter("userWebsite");
                String userGithub = request.getParameter("userGithub");
                String userTwitter = request.getParameter("userTwitter");
                String userInstagram = request.getParameter("userInstagram");
                String userFacebook = request.getParameter("userFacebook");
                String userVk = request.getParameter("userVk");
                String userTelegram = request.getParameter("userTelegram");

                String password = request.getParameter("password");
                String newPassword = request.getParameter("password");
                String newPasswordRepeat = request.getParameter("password");

                if ("".equals(name) || name == null) {
                    request.setAttribute("name", null);
                }

                if ("".equals(lastname) || lastname == null) {
                    request.setAttribute("lastname", null);
                }

                if ("".equals(email) || email == null) {
                    request.setAttribute("email", null);
                }

                if ("".equals(employee) || employee == null) {
                    request.setAttribute("employee", null);
                }

                if ("".equals(employeeCompany) || employeeCompany == null) {
                    request.setAttribute("employeeCompany", null);
                }

                if ("".equals(town) || town == null) {
                    request.setAttribute("town", null);
                }

                if ("".equals(phoneNumber) || phoneNumber == null) {
                    request.setAttribute("phoneNumber", null);
                }

                if ("".equals(buyerDescription) || buyerDescription == null) {
                    request.setAttribute("buyerDescription", null);
                }

                if ("".equals(birthDate) || birthDate == null) {
                    request.setAttribute("birthDate", null);
                }

                if ("".equals(address) || address == null) {
                    request.setAttribute("address", null);
                }

                if ("".equals(userWebsite) || userWebsite == null) {
                    request.setAttribute("userWebsite", null);
                }

                if ("".equals(userGithub) || userGithub == null) {
                    request.setAttribute("userGithub", null);
                }

                if ("".equals(userTwitter) || userTwitter == null) {
                    request.setAttribute("userTwitter", null);
                }

                if ("".equals(userInstagram) || userInstagram == null) {
                    request.setAttribute("userInstagram", null);
                }

                if ("".equals(userFacebook) || userFacebook == null) {
                    request.setAttribute("userFacebook", null);
                }

                if ("".equals(userVk) || userVk == null) {
                    request.setAttribute("userVk", null);
                }

                if ("".equals(userTelegram) || userTelegram == null) {
                    request.setAttribute("userTelegram", null);
                }

                if ("".equals(password) || password == null) {
                    request.setAttribute("password", null);
                }

                if ("".equals(newPassword) || newPassword == null) {
                    request.setAttribute("newPassword", null);
                }

                if ("".equals(newPasswordRepeat) || newPasswordRepeat == null) {
                    request.setAttribute("newPasswordRepeat", null);
                }

                if (!"".equals(password) && !"".equals(newPassword) && !"".equals(newPasswordRepeat)) {
                    if (password.equals(user.getPassword())) {
                        if (!newPasswordRepeat.equals(newPassword)) {
                            request.setAttribute("info", "Неверно указае пароль!");
                        } else {
                            request.setAttribute("password", newPassword);
                        }
                    }
                }

                buyer = buyerFacade.find(user.getBuyer().getId());

                buyer.setName(name);
                buyer.setLastname(lastname);
                buyer.setEmail(email);
                buyer.setEmployee(employee);
                buyer.setEmployeeCompany(employeeCompany);
                buyer.setTown(town);
                buyer.setPhoneNumber(phoneNumber);
                buyer.setBuyerDescription(buyerDescription);
                buyer.setBirthDate(birthDate);
                buyer.setAddress(address);
                buyer.setUserWebsite(userWebsite);
                buyer.setUserGithub(userGithub);
                buyer.setUserTwitter(userTwitter);
                buyer.setUserInstagram(userInstagram);
                buyer.setUserFacebook(userFacebook);
                buyer.setUserVk(userVk);
                buyer.setUserTelegram(userTelegram);

                buyerFacade.edit(buyer);

                request.setAttribute("buyer", buyer);
                request.setAttribute("info", "Данные пользователя " + '"' + user.getLogin() + '"' + " были изменены.");
                request.getRequestDispatcher("/buyerProfile").forward(request, response);
                break;

            case "/checkQuestions":
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("questions")).forward(request, response);
                break;

            case "/balanceReplenishmentForm":
                buyer = buyerFacade.find(user.getBuyer().getId());
                request.setAttribute("buyer", buyer);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("balanceReplenishment")).forward(request, response);
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