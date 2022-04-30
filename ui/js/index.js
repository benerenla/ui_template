let main_wrap = document.getElementById("main");
let button1 = document.getElementById("close");

function open() {
  main_wrap.style.display = "block";
}

function close() {
  main_wrap.style.display = "none";
}

close();

window.addEventListener("message", function (event) {
  if (event.data.type === "open") {
    if (event.data.active === true) {
      let playerDetail = document.createElement("h1");
      playerDetail.innerHTML = `Name: ${event.data.playerData.name}, Job: ${event.data.playerData.job.name}`;
      main_wrap.append(playerDetail);
      open();
    } else {
      close();
    }
  }
});
