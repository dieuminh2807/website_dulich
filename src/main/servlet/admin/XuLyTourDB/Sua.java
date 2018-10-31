package admin.XuLyTourDB;

import entity.ChiTietTour;
import utils.db.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Sua {
    public static boolean suaChiTietTour(String matour, String maloaitour, String tenloaitour, String tentour , int giavenguoilon,
                                            String thoigian, String khoihanh, String phuongtien, String khachsan, String lichtrinh, int giavetreem){
        try {
        String sql = "update tour set maloaitour = ?, tenloaitour = ?, tentour = ?, giavenguoilon = ?,\n" +
                "                                            thoigian = ?, khoihanh = ?, phuongtien = ?, khachsan = ?, lichtrinh = ?, giavetreem = ?  where matour = ? ";
        Connection con = DatabaseUtil.getConnection();
        ChiTietTour cct = new ChiTietTour();

            PreparedStatement pstm  = con.prepareStatement(sql);
            pstm.setString(1,maloaitour);
            pstm.setString(2,tenloaitour);
            pstm.setString(3,tentour);
            pstm.setInt(4,giavenguoilon);
            pstm.setString(5,thoigian);
            pstm.setString(6,khoihanh);
            pstm.setString(7,phuongtien);
            pstm.setString(8,khachsan);
            pstm.setString(9,lichtrinh);
            pstm.setInt(10,giavetreem);
            pstm.setString(11,matour);

            int rs = pstm.executeUpdate();
            if(rs == 1) {
                return true;
            } else {
                return false;
            }
            
        } catch (SQLException e) {
           return false;
        }
    }
}
