package practicas;
import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class instituto {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection conexion = null;
		
		try {
			/*
			subprotocolo: mysql
			host: localhost
			puerto: 3306
			base de datos: instituto
			usuario: root
			contraseña:
			*/
			conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/instituto", "root", "");
			// muestra información del tipo de sistema de base de datos (MySQL)
			System.out.println("Base de datos: " +
			conexion.getMetaData().getDatabaseProductName());
		
			System.out.println("Versión: " + conexion.getMetaData().getDatabaseProductVersion());
			// muestra información del diver MySQL (MySQL Connector/J)
			System.out.println("Driver: " + conexion.getMetaData().getDriverName());
			// muestra información de la versión del driver MySQL (mysql-connector-java-8.0.18)
			System.out.println("Versión del driver: " + conexion.getMetaData().getDriverVersion());
			} catch (SQLException e) {
			e.printStackTrace();
			}
		
	}
}