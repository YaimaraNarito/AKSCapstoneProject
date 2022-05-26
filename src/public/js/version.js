num1 = Math.floor(Math.random() * 11);
num2 = Math.floor(Math.random() * 11);
num3 = Math.floor(Math.random() * 101);
num4 = Math.floor(Math.random() * 101);

output = "Version: " + num1.toString() + "." + num2.toString() + "." + num3.toString() + "." + num4.toString()

document.getElementById("main").innerHTML = `<h1 class='text2'>${output}</h1>`;