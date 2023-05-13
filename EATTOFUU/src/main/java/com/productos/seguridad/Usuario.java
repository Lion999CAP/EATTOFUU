package com.productos.seguridad;

import com.productos.datos.*;
import java.sql.ResultSet;

public class Usuario {

	private String nombre;
	private String direccion;
	private String login;
	private String clave;
	private int perfil; 	
	
	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public int getPerfil() {
		return perfil;
	}

	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public boolean verificarUsuario(String nlogin, String nclave) {
		boolean respuesta=false;
		String sentencia= "Select * from tb_usuario where login_us='"+nlogin+
		"' and clave_us='"+nclave+"';";
		//System.out.print(sentencia);
		try
		{
			ResultSet rs;
			Conexion clsCon=new Conexion();
			rs=clsCon.Consulta(sentencia);
			if(rs.next())
			{
			respuesta=true;
			this.setLogin(nlogin);
			this.setClave(nclave);
			this.setPerfil(rs.getInt(2));
			this.setNombre(rs.getString(3));
			}
			else
			{
			respuesta=false;
			rs.close();
			}
			}
			catch(Exception ex)
			{
			System.out.println( ex.getMessage());
			}
			return respuesta;
		
	}

}
