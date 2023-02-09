document.getElementById("submitGame").addEventListener("click", e=>{
    document.getElementById("gameImage").style.display = "none";
    let guess = document.getElementById("gameGuess").value;
    if (guess != ("guitar" || "Guitar")) {
        text = "Sorry! It was a guitar!";
    }
    else {
        text = "Well Done! You got it right!";
    }
    message = document.getElementById("question")
    message.innerHTML = text
});

