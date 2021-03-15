package servlets;

import entity.Avatar;
import entity.Cover;
import entity.User;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import session.AvatarFacade;
import session.CoverFacade;
import session.UserRolesFacade;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.stream.Collectors;


@WebServlet(name = "AvatarUploadServlet", urlPatterns = {
        "/uploadAvatar",

})
@MultipartConfig
public class AvatarUploadServlet extends HttpServlet {
    @EJB
    UserRolesFacade userRolesFacade;
    @EJB
    AvatarFacade avatarFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String uploadFolder = "D:\\UploadJPTVR19WebShop/avatars";
        List<Part> fileParts = request
                .getParts()
                .stream()
                .filter(part -> "file".equals(part.getName()))
                .collect(Collectors.toList());
        StringBuilder sb = new StringBuilder();
        for (Part filePart : fileParts) {
            sb.append(uploadFolder + File.separator + getFileName(filePart));
            File file = new File(sb.toString());
            file.mkdirs();
            try (InputStream fileContent = filePart.getInputStream()) {
                Files.copy(fileContent, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
            }
        }
        Avatar avatar = new Avatar(sb.toString());
        avatarFacade.create(avatar);
        List<Avatar> listAvatars = avatarFacade.findAll();
        request.setAttribute("listAvatars", listAvatars);
        request.setAttribute("info", "Файл загружен");
        request.getRequestDispatcher("/registrationForm").forward(request, response);
    }

    private String getFileName(Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content
                        .substring(content.indexOf('=') + 1)
                        .trim()
                        .replace("\"", "");
            }
        }
        return null;
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