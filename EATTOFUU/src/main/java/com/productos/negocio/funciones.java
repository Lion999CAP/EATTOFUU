package com.productos.negocio;

import java.time.LocalDate;
import java.time.Period;

public class funciones {

	private String cedula;
	private int numero;
	
	public funciones() {
		this.cedula="";
		this.numero=0;
	}
	
	public String provincia_cedula(String cedula) {
		String dig = cedula.substring(0, 2);
	   	String res;
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
	
	public static int calcular_edad(String birthDateString) {
        LocalDate birthDate = LocalDate.parse(birthDateString);
        LocalDate currentDate = LocalDate.now();
        return Period.between(birthDate, currentDate).getYears();
    }

	

}
