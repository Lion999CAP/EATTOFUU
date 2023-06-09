package com.productos.negocio;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import com.productos.datos.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

public class Producto {
	
	private int id;
	private int cat;
	private String nombre;
	private int cantidad;
	private double precio;
	private byte foto;
	
	public Producto(int cod, String des, float preci, int cant) {
		this.setId(cod);
		this.setNombre(des);
		this.setPrecio(preci);
		this.setCantidad(cant);
	}
	
	public String consultarTodo()
	{
	String sql="SELECT * FROM tb_producto ORDER BY id_pr";
	Conexion con=new Conexion();
	String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio Normal</th>";
	ResultSet rs=null;
	rs=con.Consulta(sql);
	try {
	while(rs.next())
	{
	tabla+="<tr><td>"+rs.getInt(1)+"</td>"
	+ "<td>"+rs.getString(3)+"</td>"
	+ "<td>"+rs.getInt(4)+"</td>"
	+ "<td>"+rs.getDouble(5)+'$'+"</td>"
	+ "<td>"+rs.getString(7)+"</td>"
	+ "<td>"+rs.getDouble(8)+'$'+"</td>"
	+ "</td></tr>";
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.print(e.getMessage());
	}
	tabla+="</table>";
	return tabla;
	}

	public String buscarProductoCategoria(int cat)
	{
	String sentencia="SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat="+(cat);
	Conexion con=new Conexion();
	ResultSet rs;
	String resultado="<table border=3>";
	resultado+="<tr><th>Descripcion</th><th>Precio</th></tr>";
	try
	{
	rs=con.Consulta(sentencia);
	while(rs.next())
	{
	resultado+="<tr><td>"+ rs.getString(1)+"</td>"
	 + "<td>"+rs.getDouble(2)+"</td></tr>";
	}
	resultado+="</table>";
	}
	catch(SQLException e)
	{
	System.out.print(e.getMessage());
	}
	return resultado;
	}
	
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio, String directorio) {
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO public.tb_producto " + "(id_pr, id_cat, nombre_pr, cantidad_pr, precio_pr) " + "VALUES (?, ?, ?, ?, ?);";
		try {
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			//File fichero=new File(directorio);
			//FileInputStream streamEntrada=new FileInputStream(fichero);
			//pr.setBinaryStream(6, streamEntrada,(int)fichero.length());
			if(pr.executeUpdate()==1) {
				result="Inserción correcta";
				} else {
					result="Error en inserción";
					}
			} catch(Exception ex) {
				result=ex.getMessage();
				} finally 
		{ 
					try {
						pr.close();
						con.getConexion().close();
						} catch(Exception ex) {
							System.out.print(ex.getMessage());
							}
					}
		return result;
		}
	
	public String consultarProducto(int cod)
	{
	String tabla= "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
	String sql="SELECT * FROM tb_producto WHERE id_cat= " + cod;
	Conexion con=new Conexion();
	ResultSet rs=null;
	try {
	rs=con.Consulta(sql);
		while(rs.next()){
			tabla+="<tr><td>"+rs.getInt(1)+"</td>"
			+ "<td>"+rs.getString(3)+"</td>"
			+ "<td>"+rs.getInt(4)+"</td>"
			+ "<td>"+rs.getDouble(5)+'$'+"</td>"
			+ "<td> <a href= EditarProductos.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
			+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Eliminar</pre></a></td>"
			+ "</td></tr>";
		}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.print(e.getMessage());
	}
	tabla+="</table>";
	return tabla;
	}
	
	public String consultarProductoOferta(int cod)
	{
	String tabla= "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
	String sql="SELECT * FROM tb_producto WHERE id_cat= " + cod;
	Conexion con=new Conexion();
	ResultSet rs=null;
	try {
	rs=con.Consulta(sql);
		while(rs.next()){
			tabla+="<tr><td>"+rs.getInt(1)+"</td>"
			+ "<td>"+rs.getString(3)+"</td>"
			+ "<td>"+rs.getInt(4)+"</td>"
			+ "<td>"+rs.getDouble(5)+'$'+"</td>"
			+ "<td> <a href= producto_oferta.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Oferta</pre></a></td>"
			+ "<td> <a href= producto_cancelar.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Cancelar</pre></a></td>"
			+ "</td></tr>";
		}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.print(e.getMessage());
	}
	tabla+="</table>";
	return tabla;
	}
	
	
	public void ConsulEditarProductos (int cod) {
		Conexion obj=new Conexion();
		ResultSet rs = null;
		String sql = "SELECT id_pr, id_cat, descripcion_pr, precio_pr, cantidad_pr FROM tb_producto where id_pr =" + cod;
		try {
			rs = obj.Consulta(sql);
			while(rs.next()){
				setId(rs.getInt(1));
				setCat(rs.getInt(2));
				setNombre(rs.getString(3));
				setPrecio(rs.getFloat(4));
				setCantidad(rs.getInt(5));
			}
		}catch (SQLException e) {
	}
	}
	
	public boolean ModificarProducto(String cod, String des, String preci, String cant) {
		boolean agregado = false;
		Conexion con=new Conexion();
		String sql = "UPDATE tb_producto SET descripcion_pr='" + des + "', precio_pr='" +preci+"',"
				+ " cantidad_pr='" + cant + "' WHERE id_pr='" + cod + "';";
		//System.out.print(sql);
		try {
			con.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
		
	public boolean EliminarProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_pr= '"+cod+"'";
		try {
			con.Ejecutar(sql);
			f = true;
		}catch (Exception e) {
			f = false;
		}
		return f;
	}
	
	public boolean OfertaProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "UPDATE public.tb_producto	SET producto_oferta=precio_pr - (precio_pr*0.6), estado='Oferta' WHERE id_pr='"+cod+"';";
		try {
			con.Ejecutar(sql);
			f = true;
		}catch (Exception e) {
			f = false;
		}
		return f;
	}
	
	public boolean NoOfertaProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "UPDATE public.tb_producto	SET producto_oferta=precio_pr, estado='Normal' WHERE id_pr='"+cod+"';";
		try {
			con.Ejecutar(sql);
			f = true;
		}catch (Exception e) {
			f = false;
		}
		return f;
	}
		
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

	public int getCantidad() {
			return cantidad;
		}

	public void setCantidad(int cantidad) {
			this.cantidad = cantidad;
		}

	public double getPrecio() {
			return precio;
		}

	public void setPrecio(double precio) {
			this.precio = precio;
		}

	public byte getFoto() {
			return foto;
		}

	public void setFoto(byte foto) {
			this.foto = foto;
		}

	public int getCat() {
		return cat;
	}

	public void setCat(int cat) {
		this.cat = cat;
	}
	
	public Producto() {
		this.cantidad=0;
		this.cat=0;
		this.foto=0;
		this.id=0;
		this.nombre="";
		this.precio=0;
	}
}
