<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
     <style>
    body {
  
  font-family:IRAN-sans,Tahoma;

}

.login {
  width: 400px;
  margin: 16px auto;
  font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header,
.login p {
  margin-top: 0;
  margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {
  width: 0;
  margin-right: auto;
  margin-left: auto;
  border: 12px solid transparent;
  border-bottom-color: #58d;
}

.login-header {
  background: #58d;
  padding: 20px;
  font-size: 1.4em;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  color: #bbb;
}

.login-container {
  background: #ebeceb;
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}

.login input {
  box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  padding: 16px;
  outline: 0;
  font-family: inherit;
  font-size: 0.95em;
}

.login input[type="email"],
.login input[type="password"] {
  background: #fff;
  border-color: #bbb;
  color: #555;
}

/* Text fields' focus effect */
.login input[type="email"]:focus,
.login input[type="password"]:focus {
  border-color: #888;
}

.login input[type="submit"] {
  background: #58d;
  border-color: transparent;
  color: #bbb;
  cursor: pointer;
}

.login input[type="submit"]:hover {
  background: #17c;
}

/* Buttons' focus effect */
.login input[type="submit"]:focus {
  border-color: #05a;
}
   /*==================================
            طراحی نحوه نمایش پیغام خطا
        ==================================*/ 
   
.closelogin {
    color: #680026;
    float: right;
    margin: 20px 0 0 0;
    font-size: 50px;
    line-height: 1px;
    font-weight: bold;
}
.closelogin:hover,.closelogin:focus {
    color: #ff4d3b;
    outline: none;
    text-decoration: none;
    cursor: pointer;
}
 </style>
    <script type = "text/javascript">
        function ShowMessage() {        
            var modal = document.getElementById('myModallogin');
            var span = document.getElementsByClassName("closelogin")[0];
            modal.style.display = "block";          
            span.onclick = function () {
            modal.style.display = "none";
            }
            window.onclick = function (event) {
            if (event.target == modal) {
            modal.style.display = "none";}
            }
        }
 </script>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Log in</h2>

  <div class="login-container">
    <p><input id="username" runat="server" type="text" placeholder="نام کاربری"/></p>
    <p><input  id= "password" runat="server" type="password" placeholder="کلمه عبور"/></p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="ورود" OnClick="Button1_Click" /></p>
  </div>
</div> 
    </div>
    </form>
</body>
</html>
