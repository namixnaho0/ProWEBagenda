function evalua(oNombre, oApePat, oApeMat, oNum, oDir, oEmail) {
  var sErr = "";
  var bRet = false;

  if (oNombre.disabled == false && oNombre.value == "")
    sErr = sErr + "\n Falta nombre";

  if (oApePat.disabled == false && oApePat.value == "")
    sErr = sErr + "\n Falta apellido paterno";

  if (oApeMat.disabled == false && oApeMat.value == "")
    sErr = sErr + "\n Falta apellido Materno";

  if (oNum.disabled == false && oNum.value == "")
    sErr = sErr + "\n Falta numero";

  if (oDir.disabled == false && oDir.value == "")
    sErr = sErr + "\n Falta direccion";

  if (oEmail.disabled == false && oEmail.value == "")
    sErr = sErr + "\n Falta email";

  if (sErr == "") bRet = true;
  else alert(sErr);

  return bRet;
}

/*
function popup(msg, dato1, dato2, dato3, dato4, action, clave) {
  const popup = document.createElement("div");
  popup.classList.add("popup");

  const formu = document.createElement("form");
  formu.action = action;
  formu.method = "POST";

  const iclave = document.createElement("input");
  iclave.type = "hidden";
  iclave.name = "txtClave";
  iclave.value = clave;

  const iope = document.createElement("input");
  iope.type = "hidden";
  iope.name = "txtOpe";
  iope.value = "b";

  formu.appendChild(iclave);
  formu.appendChild(iope);

  const title = document.createElement("h4");
  title.textContent = msg;

  const d1 = document.createElement("p"); d1.textContent = dato1;
  const d2 = document.createElement("p"); d2.textContent = dato2;
  const d3 = document.createElement("p"); d3.textContent = dato3;
  const d4 = document.createElement("p"); d4.textContent = dato4;

  formu.appendChild(title);
  formu.appendChild(d1);
  formu.appendChild(d2);
  formu.appendChild(d3);
  formu.appendChild(d4);

  const enviar = document.createElement("input");
  enviar.type = "submit";
  enviar.name = "Submit";
  enviar.value = "Borrar";

  const cancel = document.createElement("button");
  cancel.type = "button";
  cancel.textContent = "Cancelar";
  cancel.addEventListener("click", function () {
    document.body.removeChild(popup);
  });

  formu.appendChild(enviar);
  formu.appendChild(cancel);
  popup.appendChild(formu);
  document.body.appendChild(popup);

}*/
