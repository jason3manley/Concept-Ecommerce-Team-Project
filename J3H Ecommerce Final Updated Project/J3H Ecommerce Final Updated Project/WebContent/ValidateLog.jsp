<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>

 <html> 
 <head>
<%@ page import ="java.sql.*" %>


  <script>
  function validateForm()
  { 

    if(document.frm.Username.value=="")
    { 
      alert("User Name should not be blank.."); 
      document.frm.Username.focus(); 
      return false; 
    }
     else if(document.frm.password.value=="")
    {
      alert("Password should not be blank"); 
      document.frm.password.focus(); return false; 
    }

   } 

     </script> 

     </head>

     <body>

    <form name="frm" method="get" action="JScript.js" onSubmit="return validateForm()"> 

    <table width="100%" border="0" cellspacing="0" 
    cellpadding="0"> 

    <tr> <td width="22%"> </td> <td width="78%"> </td> </tr>

     <tr> <td>Enter UserName </td> <td><input type="text" 
     name="Username" /></td> </tr>

      <tr> <td>Enter password</td> <td><input type="text" 
     name="password" /></td> </tr> 

      <tr> <td> </td> <td><input type="submit" name="submit" 
     value="Submit"></td> </tr>

       <tr> <td> </td> <td> </td> </tr>

        </table>
         </form> </body> </html>
