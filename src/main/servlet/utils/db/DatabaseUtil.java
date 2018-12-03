package utils.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
    public static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://node205397-dulich.j.layershift.co.uk:3306/websitedulich?useUnicode=yes&characterEncoding=UTF-8", "root", "APAnpd71171");
            return con;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void closeConnection() {
        try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
