<%     
session.setAttribute("IsLoggedIn", null);
session.setAttribute("login_email", null);
session.setAttribute("login_pass", null);
session.setAttribute("validation_code", null);
session.setAttribute("Email_2", null);
session.setAttribute("email", null);
session.setAttribute("pass1", null);
session.setAttribute("pass2", null);
response.sendRedirect("index.jsp");
%>
