var attempt = 3; // Count the number of attempts

function getLoginDetails() { // Executes when the button is pressed
    var usr = document.getElementById("uname");
    var pwd = document.getElementById("psw");
    var username = "admin";
    var password = "password";

    if (usr == "") {
        alert("Username needs to be filled out");
    }

    if (pwd == "") {
        alert("Password needs to be filled out");
    }

    if ((usr == username) && (pwd == password)) {
        alert("Login successful");
        console.log("Login successful");
        document.location.href = "\ASPX\MainHomepage.aspx";
        return true;

    } else {
        attempt --; // Taking 1 away from attempt each time
        alert("You have " + attempt + " attempts left");
        console.log("Incorrect details entered");

        // Disable fields after 3 attempts
        if (attempt == 0) {
            var un = document.getElementById("uname").disabled;
            var pw = document.getElementById("pwd").disabled;
            var un = document.getElementById("uname").disabled;
            return false;
        }
    }
}