<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Main_System_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\Main System\loginstyle.css" />
    <title>User guide: Visual Basic Order Record System</title>
    <link rel="shortcut icon" href="\Photos/favicon.ico" />
</head>
<body>
    <script type="text/javascript">
        var attempt = 3; // Count the number of attempts

        function getLoginDetails() { // Executes when the button is pressed
            var usr = document.forms["loginform"]["usrname"].value;
            var pwd = document.forms["loginform"]["psw"].value;
            var remember = document.forms["loginform"]["remembercheckbox"].value;
            var username = "admin";
            var password = "password";

            if (usr == "") {
                alert("Username needs to be filled out");
            }

            if (pwd == "") {
                alert("Password needs to be filled out");
            }

            if ((usr == username) && (pwd == password)) {
                console.log("Login successful");
                alert("Login successful");
                window.location = "MainHomepage.aspx";
                return false;

            } else {  // Attempt tracking
                attempt--; // Taking 1 away from attempt each time
                alert("You have " + attempt + " attempts left");
                console.log("Incorrect details entered");

                // Disable fields after 3 attempts
                if (attempt == 0) {
                    var usr = document.forms["loginform"]["usrname"].disabled;
                    var pwd = document.forms["loginform"]["psw"].disabled;
                    var subm = document.forms["loginform"]["submit"].disabled;
                    return false;
                }
            }
        }

        function changePage() {

        }
    </script>

    <div class="modal-content">
        <div class="imgcontainer">
            &nbsp;<img src="\Photos\rmslogo.png" alt="Avatar" class="avatar" style="width:15%;height:80%;" />
        </div>

        <div class="container">
            <form id="loginform" name="loginform" runat="server">
                <label><b>Username</b></label>
                <input type="text" name="usrname" placeholder="Enter Username" required />
                <label><b>Password</b></label>
                <input type="password" name="psw" placeholder="Enter Password" required /><br />
                
                <button type="submit" onclick="getLoginDetails()">Login</button>
                <input type="checkbox" name="remembercheckbox" checked="checked" /> Remember me
            </form>
        </div>
    </div>
</body>
</html>
