function orderNumber() {
    v = document.getElementById("javaordernumber").value = '00001';
    console.log("Filled the Order Number field with the value: " + v);
}

function orderDate() {
    var fulldate = new Date();
    var day = fulldate.getDay();
    var month = fulldate.getDate();
    var year = fulldate.getFullYear();
    var full = [day, month, year]
    d = document.getElementById("javaorderdate").value = full;
    console.log("Filled the Order Date field with the value: " + d);
}

function getInvoice() {
    function getCustomer() {
        var a = document.getElementById("javacustomer");
        var strUser = a.options[a.selectedIndex].text;
        if (a = "") {
            console.log("There is no value in the Customer field")
        } else {
            console.log("Value" + a + "in the Customer field")
            document.getElementById("quantityoutput").value = strUser;
        }        
    }
    /*
    function getProducts() {
        var b = document.getElementById("javaproduct");
        var strUser = b.options[b.selectedIndex].text;
        return strUser
        newFunction(strUser);

    }

    function getQuantity() {
        var c = document.getElementById("javaquantity");
        var strUser = c.options[c.selectedIndex].text;
        return strUser
        newFunction(strUser);
    }

    getCustomer()
    getProducts()
    getQuantity()
    console.log("The Invoice code is working");
    */
}

function saveOrder() {
  

}