package utils.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class DonHangDB {
    public static int datTour(String madonhang, String matour, int songuoilon, int sotrevua, int sotrenho, long tongtien,
                              Date ngaykhoihanh, String thanhtoan, String ghichu){
        int ketqua;
        String sql_dattour = "INSERT INTO dattour(madonhang,matour,songuoilon,sotrevua,sotrenho,tongtien,ngaykhoihanh,thanhtoan,ghichu) value(?,?,?,?,?,?,?,?,?)";
        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql_dattour);
            pstm.setString(1,madonhang);
            pstm.setString(2,matour);
            pstm.setInt(3,songuoilon);
            pstm.setInt(4,sotrevua);
            pstm.setInt(5,sotrenho);
            pstm.setLong(6,tongtien);
            pstm.setDate(7, new java.sql.Date(ngaykhoihanh.getTime()));
            pstm.setString(8,thanhtoan);
            pstm.setString(9,ghichu);
            ketqua = pstm.executeUpdate();
        } catch (SQLException e) {
            ketqua = 0;
        }
        return ketqua;
    }
    public static int nguoiDat(String madonhang,String hoten,String sodienthoai,String diachi,String email){
        int ketqua;
        String sql = "insert into nguoidat(madonhang,hoten,sodienthoai,diachi,email) value(?,?,?,?,?)";
        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,madonhang);
            pstm.setString(2,hoten);
            pstm.setString(3,sodienthoai);
            pstm.setString(4,diachi);
            pstm.setString(5,email);

            ketqua = pstm.executeUpdate();
        } catch (SQLException e) {
            ketqua = 0;
        }
        return ketqua;
    }
    public static int nguoiDiCung(String madonhang,String hoten,String gioitinh, String dotuoi){
        int ketqua;
        String sql = "insert into nguoidicung(madonhang,hoten,gioitinh,dotuoi) value(?,?,?,?)";
        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,madonhang);
            pstm.setString(2,hoten);
            pstm.setString(3,gioitinh);
            pstm.setString(4,dotuoi);

            ketqua = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            ketqua = 0;
        }
        return ketqua;
    }
}
