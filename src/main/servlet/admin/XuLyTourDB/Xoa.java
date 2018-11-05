package admin.XuLyTourDB;

import utils.db.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Xoa {
public static boolean xoaTour(String matour){
    String sql = "delete from tour where matour = ?";
    Connection con = DatabaseUtil.getConnection();
    try {
        PreparedStatement pstm = con.prepareStatement(sql);
        pstm.setString(1,matour);
        int rs = pstm.executeUpdate();
        if(rs == 1){
            return true;
        }
        else{
            return false;
        }
    } catch (SQLException e) {
        return false;
    }
}
}
