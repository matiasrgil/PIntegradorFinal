const form = document.getElementById("form");

const name = document.getElementById("name");
const surname = document.getElementById("surname");
const email = document.getElementById("email");
const cantidad = document.getElementById("cantidad");
const cuadroTotal = document.getElementById("totalCuenta");

const addTotal = document.getElementById("btn-send");
const clear = document.getElementById("btn-clear");

const p_total = document.getElementById("p-total");
const p_$ = document.getElementById("p-$");
const categoria = document.getElementById("categoria");

var validador = 0;
var cat = categoria.value;
var cant = 0;
const ticket = 200;
let desc = 0;
let total = 0;
var lock = false;

clear.addEventListener("click", (e) => {
  e.preventDefault();
  name.value = "";
  surname.value = "";
  email.value = "";
  cantidad.value = "";
  validador = 0;
  cuadroTotal.style.background = "#cce5ff";
  cuadroTotal.style.color = "#000";
  cuadroTotal.style.justifyContent = "space-between";
  p_total.style.paddingRight = "0rem";
  p_$.style.paddingLeft = "0rem";
  p_total.innerHTML = "";
  addTotal.innerHTML = "Resumen";
});

// Función para validar el formato de correo electrónico
const isValidEmail = (email) => {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
};

// Botón "Finalizar compra" del modal
const btnFinalizar = document.getElementById("btn-finalizar");
btnFinalizar.addEventListener("click", () => {
  // Ocultar el modal
  $("#resumenModal").modal("hide");

  // Mostrar alert de finalización
  alert("Compra finalizada");

  // Recargar la página después de mostrar el alert
  location.reload();
});

// Botón "Borrar compra" del modal
const btnBorrar = document.getElementById("btn-borrar");
btnBorrar.addEventListener("click", () => {
  // Ocultar el modal
  $("#resumenModal").modal("hide");

  // Mostrar alert de borrado
  alert("Compra borrada");

  // Recargar la página después de mostrar el alert
  location.reload();
});

// ... (Código anterior)

const mensajeError = document.getElementById("mensaje-error");
const mensajeConfirmacion = document.getElementById("mensaje-confirmacion");

addTotal.addEventListener("click", (e) => {
  e.preventDefault();

  if (
    (!(name.value.trim() == "") ||
      !(surname.value.trim() == "") ||
      !(email.value.trim() == "") ||
      !(cantidad.value.trim() == "")) &&
    validador > 0
  ) {
    // Mostrar modal
    $("#resumenModal").modal("show");
    lock = true;
  } else {
    validador++;
    if (
      name.value.trim() == "" ||
      surname.value.trim() == "" ||
      email.value.trim() == "" ||
      cantidad.value.trim() == ""
    ) {
      mensajeError.textContent = "Completa todos los datos";
      validador = 0;
    } else if (!isValidEmail(email.value)) {
      mensajeError.textContent = "Ingrese un correo electrónico válido";
      validador = 0;
    } else {
      cuadroTotal.style.background = "#bfdeff";
      cuadroTotal.style.color = "#3916c8";
      cuadroTotal.style.border = "1px solid #3916c8";
      cuadroTotal.style.justifyContent = "center";
      addTotal.innerHTML = "Confirme su compra";
    }

    cat = categoria.value;
    cant = cantidad.value;
    switch (cat) {
      case "Estudiante":
        desc = 0.8;
        console.log("Adentro de 0.8");
        break;
      case "Trainee":
        desc = 0.5;
        console.log("Adentro de 0.5");
        break;
      case "Junior":
        desc = 0.15;
        console.log("Adentro de 0.15");
        break;
    }

    total = (ticket - ticket * desc) * cant;
    p_total.innerHTML = total;

    // Actualizar contenido del modal con el total de la compra
    const modalTotal = document.getElementById("modal-total");
    modalTotal.textContent = "" + total.toFixed(2);

    // Limpiar mensajes de error y confirmación
    //mensajeError.textContent = "";
    //mensajeConfirmacion.textContent = "";
  }
});

if (lock){
// Cuando se hace clic en "Aceptar" dentro del modal, recargar la página
document.getElementById("btn-aceptar-modal").addEventListener("click", () => {
  location.reload();
});
}


