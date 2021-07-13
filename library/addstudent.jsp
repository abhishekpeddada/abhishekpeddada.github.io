<%@ page import ="java.sql.*" %> 
<%    
private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String user = request.getParameter("userName");
        String pass = request.getParameter("pass");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
            PreparedStatement pst = conn.prepareStatement("insert into members values('"+user+"','"+pass+"')");
            pst.setString(1, user);
            pst.setString(2, pass);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                response.sendRedirect("admin.jsp");
            } 
            else {
                response.sendRedirect("error.html");
            }
        } 
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } %> 
