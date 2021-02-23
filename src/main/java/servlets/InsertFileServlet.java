package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.net.URLDecoder;

@WebServlet(name = "InsertFileServlet", urlPatterns = {
        "/insertCover/*"
})
public class InsertFileServlet extends HttpServlet {
    static final int DEFAULT_BUFFER_SIZE = 10240;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String filePath = request.getPathInfo();
        if(null == filePath){
            response.sendError((HttpServletResponse.SC_NOT_FOUND));
            return;
        }
        File file = new File(URLDecoder.decode(filePath,"UTF-8"));
        if(!file.exists()){
            response.sendError((HttpServletResponse.SC_NOT_FOUND));
            return;
        }
        String contentType = getServletContext().getMimeType(file.getName());
        if(null == contentType){
            contentType = "application/octet-stream";
        }
        response.reset();
        response.setContentType(contentType);
        response.setBufferSize(DEFAULT_BUFFER_SIZE);
        response.setHeader("Content-Length", String.valueOf(file.length()));
        response.setHeader("Content-Disposition", "attachment: filename=\"" + file.getName()+"\"");
        BufferedInputStream input = null;
        BufferedOutputStream output = null;
        try {
            input = new BufferedInputStream(new FileInputStream(file),DEFAULT_BUFFER_SIZE);
            output = new BufferedOutputStream(response.getOutputStream(),DEFAULT_BUFFER_SIZE);
            byte[] buffer = new byte[DEFAULT_BUFFER_SIZE];
            int length;
            while((length = input.read(buffer))>0){
                output.write(buffer,0,length);
            }
        } finally {
            if(output != null){
                output.close();
            }
            if(input != null){
                input.close();
            }
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