package practicas;

import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class instituto2 {

	static void mostrarMenu() {
		System.out.println("MENU PRINCIPAL");
		System.out.println("* 1. Mostrar notas de los alumnos");
		System.out.println("* 2. Insertar nuevo alumno");
	}
	
	//método para consultar las notas de los alumnos
	static void consultarNotas() {
		
		Statement instruccion = null;
		ResultSet resultados = null;
		Connection conexion = null;
		String usuario="root";
		String pass="";
		String baseDeDatos="jdbc:mysql://localhost:3306/instituto";
		
		try {
			//abrimos las conexiones (Usuario, contraseña, etc)
			conexion = DriverManager.getConnection(baseDeDatos, usuario, pass);
			// lanzamos las consultas
			PreparedStatement ps = conexion.prepareStatement("SELECT Nombres, Apellidos, id_asignatura, id_curso, nota FROM usuarios JOIN notas ON usuarios.id=notas.id_usuario;");
			boolean funciona=ps.execute();
			if (funciona) {
				ResultSet loteResultados = ps.getResultSet();
				while (loteResultados.next()) {
					System.out.printf("Nombres: %s // Apellidos: %s // ID de Asignatura: %s // ID de curso: %s // Nota: %s // \n ---------------------------------------------------------------------------------------------------------------------------------------- \n",loteResultados.getString("Nombres"),loteResultados.getString("Apellidos"),loteResultados.getString("id_asignatura"),loteResultados.getString("id_curso"),loteResultados.getString("nota"));
				}
			}
			else
				System.out.println("La consulta no ha devuelto resultados");
			
			
		}
		catch (SQLException e) {
			//lanzamos las excepciones si algo falla (revisad si el servidor de BBDD esta iniciado y las credenciales son correctas
			e.printStackTrace();
			}
		 finally {
			 //esto se ejecuta SIEMPRE funcione o no la consulta
			 try {
				//aqui intentamos liberar recursos
				if (resultados != null) {
				 resultados.close();
				 }
				 if (instruccion != null) {
				 instruccion.close();
				 }
				 if (conexion != null) {
				 conexion.close();
				 }
			 } catch (Exception e) {
				 //aqui manejamos las excepciones de liberar recursos
				 e.printStackTrace();
				 }
		 }
		
		
		
	}
	
	//método para insertar nuevo alumno
	static void insertarAlumno() {

		Connection conexion = null;
		String usuario="root";
		String pass="";
		String baseDeDatos="jdbc:mysql://localhost:3306/instituto";
		
		try {
			//abrimos las conexiones (Usuario, contraseña, etc)
			conexion = DriverManager.getConnection(baseDeDatos,usuario , pass);
			conexion.setAutoCommit(false); //Establecemos la transaccion
			// lanzamos las actualizaciones de la base de datos
			PreparedStatement ps1 = conexion.prepareStatement("INSERT into usuarios (Nombres, Apellidos, DNI, Direccion, Username, Password, Telefono, Foto, Tipo_de_usuario, Activo) Values (?,?,?,?,?,?,?,?,?,?)");
			ps1.setString(1, "Cristiano");
			ps1.setString(2, "Ronaldo");
			ps1.setInt(3, 123456789);
			ps1.setString(4, "Isla de Madeira");
			ps1.setString(5, "CR7");
			ps1.setString(6, "123456");
			ps1.setInt(7, 0);
			ps1.setString(8, "foto.jpg");
			ps1.setInt(9, 0);
			ps1.setInt(10, 0);
						
			ps1.execute();
			conexion.commit();
			
			if (ps1.executeUpdate() != 1) {
				throw new SQLException("Error en la actualización de los datos");
			}
		} catch (Exception e) {
			 e.printStackTrace();
			 }
			System.out.println("PROGRAMA FINALIZADO");
		}
	
		public static void main(String[] args) {
		// TODO Auto-generated method stub
			Scanner keyboard = new Scanner(System.in);
			int numero=0;
			
			do {
				instituto2.mostrarMenu();			
				try {
					numero = keyboard.nextInt();		
				} 
				catch (Exception e) {
					System.out.println("El valor introducido no es válido");
					
				}
				switch (numero) { 
			    case 1:
			    	instituto2.consultarNotas();
			     break;
			    case 2:
			    	instituto2.insertarAlumno();	    	
			     break;

			    default:		    	
			  }			
			}while ((numero>=1)&&(numero>=2));
			keyboard.close();

	}
}
