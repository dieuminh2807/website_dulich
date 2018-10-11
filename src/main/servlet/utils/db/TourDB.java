package utils.db;

import entity.ChiTietTour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TourDB {


    public static List<ChiTietTour> searchTour(String searchValue) {
        List<ChiTietTour> resultList = new ArrayList<>();
        if(searchValue == null || searchValue.trim().equals("")){
            return resultList;
        }
        String sql = "select * from tour where tenloaitour like ? or tentour like ?";
        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + searchValue + "%");
            pstm.setString(2, "%" + searchValue + "%");
            ResultSet resultSet = pstm.executeQuery();

            while (resultSet.next()) {
                String matour = resultSet.getString("matour");
                String tenloaitour = resultSet.getString("tenloaitour");
                String tentour = resultSet.getString("tentour");
                Integer giave = resultSet.getInt("giave");
                String thoigian = resultSet.getString("thoigian");
                String khoihanh = resultSet.getString("khoihanh");
                String phuongtien = resultSet.getString("phuongtien");
                String khachsan = resultSet.getString("khachsan");

                ChiTietTour chitiettour = new ChiTietTour();
                chitiettour.setMaTourdb(matour);
                chitiettour.setTenloaiTour(tenloaitour);
                chitiettour.setTenTour(tentour);
                chitiettour.setGiave(giave);
                chitiettour.setThoigian(thoigian);
                chitiettour.setKhoihanh(khoihanh);
                chitiettour.setPhuongtien(phuongtien);
                chitiettour.setKhachsan(khachsan);

                resultList.add(chitiettour);
            }

            DatabaseUtil.closeConnection();
        } catch (Exception e) {
            resultList = new ArrayList<>();
        }
        return resultList;
    }

    public static ChiTietTour hienThiCCT(String matour){
        ChiTietTour chiTietTour = new ChiTietTour();
        String sql = "select * from tour where matour = ?";
        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,matour);
            ResultSet rs = pstm.executeQuery();
            if(rs.next()){
                String maTourdb =  rs.getString("matour");
                String maloaiTour =  rs.getString("maloaitour");
                String tenloaiTour =  rs.getString("tenloaitour");
                String tenTour =  rs.getString("tentour");
                Integer giave =  rs.getInt("giave");
                String thoigian  =  rs.getString("thoigian");
                String khoihanh =  rs.getString("khoihanh");
                String phuongtien =  rs.getString("phuongtien");
                String khachsan =  rs.getString("khachsan");
                String lichtrinh =  rs.getString("lichtrinh");


                chiTietTour.setMaTourdb(maTourdb);
                chiTietTour.setMaloaiTour(maloaiTour);
                chiTietTour.setTenloaiTour(tenloaiTour);
                chiTietTour.setTenTour(tenTour);
                chiTietTour.setGiave(giave);
                chiTietTour.setThoigian(thoigian);
                chiTietTour.setKhoihanh(khoihanh);
                chiTietTour.setPhuongtien(phuongtien);
                chiTietTour.setKhachsan(khachsan);
                chiTietTour.setLichtrinh(lichtrinh);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chiTietTour;
    }
    public static List<ChiTietTour> getTourListByMaLoai(String maloaitour){
        List<ChiTietTour> cacTour  = new ArrayList<>();
        String sql = "select * from tour where maloaitour = ?";
        Connection con  = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm  = con.prepareStatement(sql);
            pstm.setString(1,maloaitour);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()){
                String matour = rs.getString("matour");
                String maloaitourdb = rs.getString("maloaitour");
                String tenloaitour = rs.getString("tenloaitour");
                String tentour = rs.getString("tentour");
                Integer giave = rs.getInt("giave");
                String thoigian = rs.getString("thoigian");
                String khoihanh = rs.getString("khoihanh");
                String phuongtien = rs.getString("phuongtien");
                String khachsan = rs.getString("khachsan");
                String lichtrinh = rs.getString("lichtrinh");

                ChiTietTour cct = new ChiTietTour();
                cct.setMaTourdb(matour);
                cct.setMaloaiTour(maloaitourdb);
                cct.setTenloaiTour(tenloaitour);
                cct.setTenTour(tentour);
                cct.setGiave(giave);
                cct.setThoigian(thoigian);
                cct.setKhoihanh(khoihanh);
                cct.setPhuongtien(phuongtien);
                cct.setKhachsan(khachsan);
                cct.setLichtrinh(lichtrinh);

                cacTour.add(cct);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cacTour;
    }

    public static Map<String,String> getListMaLoaiTour(){
        String sql = "select distinct maloaitour, tenloaitour from tour";

        Map<String,String> result = new HashMap<>();

        Connection con = DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);

            ResultSet resultSet = pstm.executeQuery();
            while(resultSet.next()){
                String maloaitour = resultSet.getString("maloaitour");
                String tenloaitour = resultSet.getString("tenloaitour");
                result.put(maloaitour,tenloaitour);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
