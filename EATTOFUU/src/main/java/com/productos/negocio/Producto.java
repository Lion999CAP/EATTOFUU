package com.productos.negocio;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
import com.productos.datos.*;
import java.io.File;
import java.io.FileInputStream;

public class Producto {
	
	private int id;
	private int cat;
	private String nombre;
	private int cantidad;
	private double precio;
	private byte foto;

	public String consultarTodo()
	{
	String sql="SELECT * FROM tb_producto ORDER BY id_pr";
	Conexion con=new Conexion();
	String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
	ResultSet rs=null;
	rs=con.Consulta(sql);
	try {
	while(rs.next())
	{
	tabla+="<tr><td>"+rs.getInt(1)+"</td>"
	+ "<td>"+rs.getString(3)+"</td>"
	+ "<td>"+rs.getInt(5)+"</td>"
	+ "<td>"+rs.getDouble(4)+'$'+"</td>"
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
	String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+(cat+1);
	Conexion con=new Conexion();
	ResultSet rs;
	String resultado="<table border=3>";
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
	System.out.print(resultado);
	return resultado;
	}
	
	public String ingresarProducto(int id, int cat, String nombre, int cantidad, double precio, String directorio)
	{
	String result="";
	Conexion con=new Conexion();
	PreparedStatement pr=null;
	String sql="INSERT INTO tb_producto (id_pr,id_cat,"
	+ "nombre_pr,cantidad_pr,precio_pr,foto_pr) "
	+ "VALUES(?,?,?,?,?,?)";
	try{
	pr=con.getConexion().prepareStatement(sql);
	pr.setInt(1,id);
	pr.setInt(2,cat);
	pr.setString(3, nombre);
	pr.setInt(4, cantidad);
	pr.setDouble(5, precio);
	File fichero=new File(directorio);
	FileInputStream streamEntrada=new FileInputStream(fichero);
	pr.setBinaryStream(6, streamEntrada,(int)fichero.length());
	if(pr.executeUpdate()==1)
	{
	result="Inserción correcta";
	}
	else
	{
	result="Error en inserción";
	}
	}
	catch(Exception ex)
	{
		result=ex.getMessage();
		}
		finally
		{
		try
		{
		pr.close();
		con.getConexion().close();
		}
		catch(Exception ex)
		{
		System.out.print(ex.getMessage());
		}
		}
		return result;
	}
	
	public String consultarProducto(String cod)
	{
	String tabla= "<table border=1>";
	String sql="SELECT * FROM tb_producto WHERE id_cat="+cod+"";
	Conexion con=new Conexion();
	tabla="<tr><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th></tr>";
	ResultSet rs=null;
	try {
		rs=con.Consulta(sql);
	while(rs.next())
	{
	tabla+="<tr><td>"+rs.getInt(1)+"</td>"
	+ "<td>"+rs.getString(3)+"</td>"
	+ "<td>"+rs.getInt(5)+"</td>"
	+ "<td>"+rs.getDouble(4)+'$'+"</td>"
	+ "<td> <a href= BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
	+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
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
	
		String sql = "SELECT 1d_pr, 1d_car, descripcion_pr, precio_pr, cantidad_pr FROM tb_producto where id_pr = '" + cod +"'";
	
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
	
	public boolean ModificarProducto(Producto mp) {
		
		boolean agregado= false;
		Conexion obj=new Conexion();
		String sql = "UPDATE tb_producto SET descripcion_pr='"+mp.getNombre()
		+"',precio_pr='"+mp.getPrecio()+"', cantidad_pr='"+mp.getCantidad()+"' WHERE id_pr='"+mp.getId()+"'";
		try {
			obj.Ejecutar(sql);
			agregado=true;
		}catch (Exception e) {
			agregado=false;
		}
			
		return agregado;
	}
		
public boolean EliminarProducto(int cod) {
		
		boolean f= false;
		Conexion obj=new Conexion();
		String sql = "DELETE from tb_producto WHERE id_pr='"+cod+"'";
		try {
			obj.Ejecutar(sql);
			f=true;
		}catch (Exception e) {
			f=false;
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
