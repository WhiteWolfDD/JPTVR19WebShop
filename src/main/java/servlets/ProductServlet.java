package servlets;

import entity.Buyer;
import entity.History;
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
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet(name = "BuyerServlet", urlPatterns = {
        "/buyProductForm",
        "/paymentForm",
        "/addToBag",
        "/shoppingCartForm",
        "/deleteFromCart",
        "/reloadAndSaveCart",
})
public class ProductServlet extends HttpServlet {

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

        httpSession = request.getSession(true);
        httpSession.setAttribute("user", user);

        @SuppressWarnings("unchecked")
        List<Product> cartList = (List<Product>) httpSession.getAttribute("cartList");

        request.setAttribute("role", userRolesFacade.getTopRoleForUser(user));
        String path = request.getServletPath();
        switch (path) {
            case "/buyProductForm":
                String productId = request.getParameter("productId");
                Product product = productFacade.find(Long.parseLong(productId));
                Buyer buyer = buyerFacade.find(user.getBuyer().getId());

                if (product.getCount() > 0) {
                    if (buyer.getMoney() - product.getPrice() >= 0) {
                        product.setCount(product.getCount() - 1);
                        productFacade.edit(product);
                        buyer.setMoney(buyer.getMoney() - product.getPrice());
                        buyerFacade.edit(buyer);
                        History history = new History(product, buyer, new GregorianCalendar().getTime(), 1);
                        historyFacade.create(history);
                        request.setAttribute("info", "Товар " + product.getTitle() + " куплен пользователем: " + buyer.getName() + " " + buyer.getLastname() + ".");
                    } else {
                        request.setAttribute("info", "Недостаточно средств на балансе.");
                    }
                }
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("index")).forward(request, response);
                break;

            case "/paymentForm":
                for (int i = 0; i < cartList.size(); i++) {
                    cartList.get(i);
                }

                request.setAttribute("cartList", cartList);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("paymentForm")).forward(request, response);
                break;

            case "/addToBag":
                productId = request.getParameter("productId");
                product = productFacade.find(Long.parseLong(productId));

                cartList.add(0, product);

                List<Product> listProducts = productFacade.findAll();

                request.setAttribute("listProducts", listProducts);
                request.setAttribute("cartList", cartList);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("listProducts")).forward(request, response);
                break;

            case "/shoppingCartForm":
                String quantity = request.getParameter("quantity");

                // время
                DateFormatSymbols sym = DateFormatSymbols.getInstance(new Locale("ru", "ru"));
                sym.setMonths(new String[]{"Января", "Февраля", "Марта", "Апреля", "Мая", "Июня", "Июля", "Августа", "Сентября", "Октября", "Ноября", "Декабря"});
                SimpleDateFormat sdf = new SimpleDateFormat("dd MMMM yyyy");
                sdf.setDateFormatSymbols(sym);
                Calendar c = Calendar.getInstance();
                c.setTime(new Date());
                c.add(Calendar.DATE, 3);
                String before = sdf.format(c.getTime());
                c.add(Calendar.DATE, 7);
                String after = sdf.format(c.getTime());

                for (int i = 0; i < cartList.size(); i++) {
                    cartList.get(i);
                }

                request.setAttribute("approxShippingDate", before);
                request.setAttribute("quantity", 2);
                request.setAttribute("productCount", cartList.size());
                request.setAttribute("finalApproxShippingDate", after);
                request.setAttribute("info", "quantity=" + quantity);
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("shoppingCart")).forward(request, response);
                break;

            case "/deleteFromCart":
                productId = request.getParameter("productId");
                product = productFacade.find(Long.parseLong(productId));

                cartList.remove(product);

                request.setAttribute("cartList", cartList);
                request.setAttribute("productCount", cartList.size());
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("shoppingCart")).forward(request, response);
                break;

            case "/reloadAndSaveCart":

                // время
                sym = DateFormatSymbols.getInstance(new Locale("ru", "ru"));
                sym.setMonths(new String[]{"Января", "Февраля", "Марта", "Апреля", "Мая", "Июня", "Июля", "Августа", "Сентября", "Октября", "Ноября", "Декабря"});
                sdf = new SimpleDateFormat("dd MMMM yyyy");
                sdf.setDateFormatSymbols(sym);
                c = Calendar.getInstance();
                c.setTime(new Date());
                c.add(Calendar.DATE, 3);
                before = sdf.format(c.getTime());
                c.add(Calendar.DATE, 7);
                after = sdf.format(c.getTime());

                request.setAttribute("approxShippingDate", before);
                request.setAttribute("finalApproxShippingDate", after);
                request.setAttribute("productCount", cartList.size());
                request.getRequestDispatcher(LoginServlet.pathToFile.getString("shoppingCart")).forward(request, response);
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