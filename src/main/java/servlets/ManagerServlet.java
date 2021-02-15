package servlets;

import entity.Buyer;
import entity.History;
import entity.Product;
import entity.User;
import session.*;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

@WebServlet(name = "ManagerServlet", urlPatterns = {
        "/addProduct",
        "/createProduct",
        "/editProductForm",
        "/editProduct",
        "/editBuyerForm",
        "/editBuyer",
        "/showBoughtProduct",
})

public class ManagerServlet extends HttpServlet {

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

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        boolean isRole = userRolesFacade.isRole("READER", user);
        if (!isRole) {
            request.setAttribute("info", "У вас нет права использовать этот ресурс. Войдите с соответствующими правами!");
            request.getRequestDispatcher("/loginForm").forward(request, response);
            return;
        }

        String path = request.getServletPath();
        switch (path) {
            case "/addProduct":
                request.setAttribute("activeAddProduct", "true");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("newProduct")).forward(request, response);
                break;
            case "/createProduct":
                String title = request.getParameter("title");
                String model = request.getParameter("model");
                String price = request.getParameter("price");
                String count = request.getParameter("count");

                Product product = new Product(title, model, Integer.parseInt(price), Integer.parseInt(count));
                productFacade.create(product);
                request.setAttribute("info", "Товар " + product.getTitle() + " добавлен.");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;
            case "/editProductForm":
                List<Product> listProducts = productFacade.findAll();
                request.setAttribute("listProducts", listProducts);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("editProduct")).forward(request, response);
                break;
            case "/editProduct":
                String productId = request.getParameter("productId");
                title = request.getParameter("title");
                model = request.getParameter("model");
                price = request.getParameter("price");
                count = request.getParameter("count");

                product = productFacade.find(Long.parseLong(productId));
                product.setTitle(title);
                product.setModel(model);
                product.setPrice(Integer.parseInt(price));
                product.setCount(Integer.parseInt(count));
                productFacade.edit(product);
                request.setAttribute("productId", productId);
                request.setAttribute("product", product);
                request.setAttribute("info", "Товар " + product.getTitle() + " был успешно изменён.");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/editBuyerForm":
                request.setAttribute("listBuyers", "true");
                List<Buyer> listBuyers = buyerFacade.findAll();
                request.setAttribute("listBuyers", listBuyers);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("editBuyer")).forward(request, response);
                break;

            case "/editBuyer":
                String buyerId = request.getParameter("buyerId");
                String name = request.getParameter("name");
                String lastname = request.getParameter("lastname");
                String money = request.getParameter("money");
                String email = request.getParameter("email");

                Buyer buyer = buyerFacade.find(Long.parseLong(buyerId));
                buyer.setName(name);
                buyer.setLastname(lastname);
                buyer.setMoney(Double.parseDouble(money));
                buyer.setEmail(email);
                buyerFacade.edit(buyer);
                request.setAttribute("buyerId", buyerId);
                request.setAttribute("buyer", buyer);
                request.setAttribute("info", "Пользователь " + buyer.getName() + " " + buyer.getLastname() + " был успешно изменён.");
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;
            case "/showBoughtProduct":
                request.setAttribute("activeListHistory", "true");
                List<History> listHistory = historyFacade.findAll();
                Map<History, List<History>> historyListMap = new HashMap<>();
                for (History history : listHistory) {
                    List<History> historyArray = historyFacade.findBoughtProducts(history);
                    historyListMap.put(history, historyArray);
                }

                request.setAttribute("historyListMap", historyListMap);
                request.setAttribute("historyCount", listHistory.size());
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("showBoughtProduct")).forward(request, response);
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