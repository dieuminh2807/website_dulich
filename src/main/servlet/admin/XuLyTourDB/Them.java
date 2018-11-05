package admin.XuLyTourDB;

import utils.db.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Them {
    public static boolean themTour(String matour, String maloaitour, String tenloaitour, String tentour , int giavenguoilon,
                                   String thoigian, String khoihanh, String phuongtien, String khachsan, String lichtrinh, int giavetreem){
        String sql = "insert into tour(matour, maloaitour, tenloaitour, tentour, giavenguoilon," +
                "thoigian, khoihanh, phuongtien, khachsan, lichtrinh, giavetreem) value(?,?,?,?,?,?,?,?,?,?,?)";
        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,matour);
            pstm.setString(2,maloaitour);
            pstm.setString(3,tenloaitour);
            pstm.setString(4,tentour);
            pstm.setInt(5,giavenguoilon);
            pstm.setString(6,thoigian);
            pstm.setString(7,khoihanh);
            pstm.setString(8,phuongtien);
            pstm.setString(9,khachsan);
            pstm.setString(10,lichtrinh);
            pstm.setInt(11,giavetreem);

            int rs = pstm.executeUpdate();
            if(rs ==1){return true;}
            else{return false;}
        } catch (SQLException e) {
            return false;
        }
    }
}
