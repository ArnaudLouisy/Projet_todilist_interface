package bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    private String url = "jdbc:mysql://localhost/todolist_interface?serverTimezone=UTC";
    private String user = "todolist_interface";
    private String password = "Todo_list";

    public Connection getConnection() {

        try {
            Connection cnx = DriverManager.getConnection(this.url,this.user,this.password);
            //System.out.print("Etat de la connexion :");
            //System.out.print(cnx.isClosed()?"fermée":"ouverte \r\n");
            return cnx;

        } catch (SQLException e) {
            System.out.print("erreur");
            e.printStackTrace();
            return null;
        }
    }
}
