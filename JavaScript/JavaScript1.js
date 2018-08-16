function getFormDetails() {
    a = document.getElementById("PID").value
    if (a = "") {
        window.alert("No value in box 'Product ID'!")
        console.log("No value in box 'Product ID'!")
    }
    b = document.getElementById("PName").value
    if (b = "") {
        window.alert("No value in box 'Product Name'!")
        console.log("No value in box 'Product Name'!")
    }
    c = document.getElementById("PCat").value
    if (c = "") {
        window.alert("No value in box 'Product Category'!")
        console.log("No value in box 'Product Category'!")
    }
    d = document.getElementById("PPrice").value
    if (d = "") {
        window.alert("No value in box 'Product Price'!")
        console.log("No value in box 'Product Price'!")
    }
}

function clearFields() {

}