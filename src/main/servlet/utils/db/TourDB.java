package utils.db;

import entity.ChiTietTour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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



}
