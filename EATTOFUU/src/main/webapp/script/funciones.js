
/*
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario"); // Obtener el valor del campo de usuario del formulario
        String contrasena = request.getParameter("contrasena"); // Obtener el valor del campo de contraseña del formulario

        // Validar las credenciales (esto es solo un ejemplo, debes implementar tu lógica de validación)
        if (usuario.equals("usuario_ejemplo") && contrasena.equals("contrasena_ejemplo")) {
            // Si las credenciales son válidas, se crea una sesión y se redirige a la página de inicio
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario); // Guardar el nombre de usuario en la sesión
            response.sendRedirect("inicio.jsp"); // Redirigir a la página de inicio (puedes cambiar la URL a la página que desees)
        } else {
            // Si las credenciales no son válidas, se redirige a una página de error
            response.sendRedirect("error.jsp"); // Redirigir a la página de error (puedes cambiar la URL a la página que desees)
        }
    }
}

*/

function provincia_cedula(input) {
	   	 let dig = input.slice(0,2);
	   	 let res;
	     	 switch (dig){
	       	case "01":
	       		res = "Azuay";
	       		break;
	       	case "02":
	   			res = "Bolivar";
	   			break;
	   		case "03":
	   			res = "Cañar";
	   			break;
	   		case "04":
	   			res = "Carchi";
	   			break;
	   		case "05":
	   			res = "Cotopaxi";
	   			break;
	   		case "06":
	   			res = "Chimborazo";
	   			break;
	   		case "07":
	   			res = "El Oro";
	   			break;
	   		case "08":
	   			res = "Esmeraldas";
	   			break;
	   		case "09":
	   			res = "Guayas";
	   			break;
	   		case "10":
	   			res = "Imbabura";
	   			break;
	   		case  "11":
	   			res = "Loja";
	   			break;
	   		case "12":
	   			res = "Los Ríos";
	   			break;
	   		case "13":
	   			res = "Manabí";
	   			break;
	   		case "14":
	   			res = "Morona Santiago";
	   			break;
	   		case "15":
	   			res = "Napo";
	   			break;
	   		case "16":
	   			res = "Pastaza";
	   			break;
	   		case "17":
	   			res = "Pichincha";
	   			break;
	   		case "18":
	   			res = "Tungurahua";
	   			break;
	   		case "19":
	   			res = "Zamora Chinchipe";
	   			break;
	   		case "20":
	   			res = "Galápagos";
	   			break;
	   		case "21":
	   			res = "Sucumbíos";
	   			break;
	   		case "22":
	   			res = "Orellana";
	   			break;
	   		case "23":
	   			res = "Santo Domingo de los Tsáchilas";
	   			break;
	   		case "24":
	   			res = "Santa Elena";
	   			break;
	   		case "30":
	   			res = "Número reservado para ecuatorianos registrados en el exterior";
	   			break;
	   		default:
	   			res = "Error";
	   	}
	   	return res;
	   }

/*
* 2. Validar credenciales de acceso (level easy)
* 2.1 escuchar al boton
*

  document.getElementById("form_login").addEventListener("submit", function(event) {
  event.preventDefault(); // Evitar el envío del formulario
  
  var usuario = document.getElementById("username").value;
  var contraseña = document.getElementById("password").value;

  // Validar las credenciales (esto es solo un ejemplo, debes implementar tu lógica de validación)
  if (usuario === "Leandro" && contraseña === "12345") {
    // Si las credenciales son válidas, redirigir a la página de inicio
    alert("Inicio de sesión exitoso");
    window.location.href = "registrar_producto.jsp"; 
  } else {
    // Si las credenciales no son válidas, mostrar un mensaje de error
    alert("Usuario o contraseña incorrectos"); // Mostrar mensaje de error (puedes personalizarlo según tus necesidades)
  }
});
*/
