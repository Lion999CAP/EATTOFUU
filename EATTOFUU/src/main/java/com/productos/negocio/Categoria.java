package com.productos.negocio;
import java.sql.*;
import com.productos.datos.*;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Categoria {
	
	private int id;
	private String nombre;
	private static int id2;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String mostrarCategoria()
	{
	String combo="<select name=cmbCategoria>";
	String sql="SELECT * FROM tb_categoria";
	ResultSet rs=null;
	Conexion con=new Conexion();
	try
	{
	rs=con.Consulta(sql);
	while(rs.next())
	{
	combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
	}
	combo+="</select>";
	}
	catch(SQLException e)
	{
	System.out.print(e.getMessage());
	}
	return combo;
	}
	
	public Categoria() {
		this.id = 0;
		this.nombre = "";
	}
	
	
}
