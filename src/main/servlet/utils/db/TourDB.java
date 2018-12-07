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
        if (searchValue == null || searchValue.trim().equals("")) {
            return resultList;
        }
        String sql = "select * from tour where tentour like ?";
        Connection con = utils.db.DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + searchValue + "%");
            ResultSet resultSet = pstm.executeQuery();

            while (resultSet.next()) {
                String matour = resultSet.getString("matour");
                String tenloaitour = resultSet.getString("tenloaitour");
                String tentour = resultSet.getString("tentour");
                Integer giavenguoilon = resultSet.getInt("giavenguoilon");
                Integer giavetreem = resultSet.getInt("giavetreem");
                String thoigian = resultSet.getString("thoigian");
                String khoihanh = resultSet.getString("khoihanh");
                String phuongtien = resultSet.getString("phuongtien");
                String khachsan = resultSet.getString("khachsan");
                String hinhshow = resultSet.getString("hinhshow");

                ChiTietTour chitiettour = new ChiTietTour();
                chitiettour.setMaTourdb(matour);
                chitiettour.setTenloaiTour(tenloaitour);
                chitiettour.setTenTour(tentour);
                chitiettour.setGiavenguoilon(giavenguoilon);
                chitiettour.setGiavetreem(giavetreem);
                chitiettour.setThoigian(thoigian);
                chitiettour.setKhoihanh(khoihanh);
                chitiettour.setPhuongtien(phuongtien);
                chitiettour.setKhachsan(khachsan);
                
                chitiettour.setHinhshow(hinhshow);

                resultList.add(chitiettour);
            }

            utils.db.DatabaseUtil.closeConnection();
        } catch (Exception e) {
            resultList = new ArrayList<>();
        }
        return resultList;
    }


    public static List<ChiTietTour> searchTourNangCao(String diemdenSearch, String phuongtienSearch, String giaSearch) {
        List<ChiTietTour> resultList = new ArrayList<>();
        String sql = "select * from tour where 1=1 ";
        if ((diemdenSearch != null) && !(diemdenSearch.equals("--Tất cả--"))) {
            sql += " AND tentour like ? ";
        }


        if ((phuongtienSearch != null) && !(phuongtienSearch.equals("--Tất cả--"))) {
            sql += " AND phuongtien = ? ";
        }


        if((giaSearch != null) && !(giaSearch.equals("--Tất cả--")))  {
            if (giaSearch.equals("NHOHON3TR")) {
                sql += " AND giavenguoilon < 3000000 ";
            } else if (giaSearch.equals("TU3DEN7")) {
                sql += " AND giavenguoilon >= 3000000 AND giavenguoilon<=7000000";
            } else if (giaSearch.equals("TU7DEN12")) {
                sql += " AND giavenguoilon > 7000000 AND giavenguoilon<=12000000";
            } else if (giaSearch.equals("TREN12")) {
                sql += " AND giavenguoilon > 12000000";
            }
        }
        Connection con = utils.db.DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            int i = 1;
            if ((diemdenSearch != null) && !(diemdenSearch.equals("--Tất cả--"))){
                pstm.setString(i, "%" + diemdenSearch);
                i++;
            }
            if ((phuongtienSearch != null) && !(phuongtienSearch.equals("--Tất cả--"))) {
                pstm.setString(i, phuongtienSearch);
            }
            ResultSet resultSet = pstm.executeQuery();

            while (resultSet.next()) {
                String matour = resultSet.getString("matour");
                String tenloaitour = resultSet.getString("tenloaitour");
                String tentour = resultSet.getString("tentour");
                Integer giavenguoilon = resultSet.getInt("giavenguoilon");
                Integer giavetreem = resultSet.getInt("giavetreem");
                String thoigian = resultSet.getString("thoigian");
                String khoihanh = resultSet.getString("khoihanh");
                String phuongtien = resultSet.getString("phuongtien");
                String khachsan = resultSet.getString("khachsan");
                String hinhshow = resultSet.getString("hinhshow");

                ChiTietTour chitiettour = new ChiTietTour();
                chitiettour.setMaTourdb(matour);
                chitiettour.setTenloaiTour(tenloaitour);
                chitiettour.setTenTour(tentour);
                chitiettour.setGiavenguoilon(giavenguoilon);
                chitiettour.setGiavetreem(giavetreem);
                chitiettour.setThoigian(thoigian);
                chitiettour.setKhoihanh(khoihanh);
                chitiettour.setPhuongtien(phuongtien);
                chitiettour.setKhachsan(khachsan);
                chitiettour.setHinhshow(hinhshow);

                resultList.add(chitiettour);
            }

            utils.db.DatabaseUtil.closeConnection();
        } catch (Exception e) {
            resultList = new ArrayList<>();
        }
        return resultList;
    }


    public static ChiTietTour hienThiCCT(String matour) {
        ChiTietTour chiTietTour = new ChiTietTour();
        String sql = "select * from tour where matour = ?";
        Connection con = utils.db.DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, matour);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                String maTourdb = rs.getString("tour.matour");
                String maloaiTour = rs.getString("maloaitour");
                String tenloaiTour = rs.getString("tenloaitour");
                String tenTour = rs.getString("tentour");
                Integer giavenguoilon = rs.getInt("giavenguoilon");
                Integer giavetreem = rs.getInt("giavetreem");
                String thoigian = rs.getString("thoigian");
                String khoihanh = rs.getString("khoihanh");
                String phuongtien = rs.getString("phuongtien");
                String khachsan = rs.getString("khachsan");
                String lichtrinh = rs.getString("lichtrinh");
                String hinhshow = rs.getString("hinhshow");
                String hinh1 = rs.getString("hinh1");
                String hinh2 = rs.getString("hinh2");
                String hinh3 = rs.getString("hinh3");
                String hinh4 = rs.getString("hinh4");

                chiTietTour.setMaTourdb(maTourdb);
                chiTietTour.setMaloaiTour(maloaiTour);
                chiTietTour.setTenloaiTour(tenloaiTour);
                chiTietTour.setTenTour(tenTour);
                chiTietTour.setGiavenguoilon(giavenguoilon);
                chiTietTour.setGiavetreem(giavetreem);
                chiTietTour.setThoigian(thoigian);
                chiTietTour.setKhoihanh(khoihanh);
                chiTietTour.setPhuongtien(phuongtien);
                chiTietTour.setKhachsan(khachsan);
                chiTietTour.setLichtrinh(lichtrinh);
                chiTietTour.setHinhshow(hinhshow);

                if (hinh1 != null || !hinh1.equals("")) {
                    chiTietTour.themHinhCon(hinh1);
                }
                if (hinh2 != null || !hinh2.equals("")) {
                    chiTietTour.themHinhCon(hinh2);
                }
                if (hinh3 != null || !hinh3.equals("")) {
                    chiTietTour.themHinhCon(hinh3);
                }
                if (hinh4 != null || !hinh4.equals("")) {
                    chiTietTour.themHinhCon(hinh4);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chiTietTour;
    }

    public static List<ChiTietTour> getTourListByMaLoai(String maloaitour) {
        List<ChiTietTour> cacTour = new ArrayList<>();
        String sql = "select * from tour where maloaitour = ?";
        Connection con = utils.db.DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, maloaitour);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                String matour = rs.getString("matour");
                String maloaitourdb = rs.getString("maloaitour");
                String tenloaitour = rs.getString("tenloaitour");
                String tentour = rs.getString("tentour");
                Integer giavenguoilon = rs.getInt("giavenguoilon");
                Integer giavetreem = rs.getInt("giavetreem");
                String thoigian = rs.getString("thoigian");
                String khoihanh = rs.getString("khoihanh");
                String phuongtien = rs.getString("phuongtien");
                String khachsan = rs.getString("khachsan");
                String lichtrinh = rs.getString("lichtrinh");
                String hinhshow = rs.getString("hinhshow");

                ChiTietTour cct = new ChiTietTour();
                cct.setMaTourdb(matour);
                cct.setMaloaiTour(maloaitourdb);
                cct.setTenloaiTour(tenloaitour);
                cct.setTenTour(tentour);
                cct.setGiavenguoilon(giavenguoilon);
                cct.setGiavetreem(giavetreem);
                cct.setThoigian(thoigian);
                cct.setKhoihanh(khoihanh);
                cct.setPhuongtien(phuongtien);
                cct.setKhachsan(khachsan);
                cct.setLichtrinh(lichtrinh);
                cct.setHinhshow(hinhshow);

                cacTour.add(cct);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cacTour;
    }

    public static Map<String, String> getListMaLoaiTour() {
        String sql = "select distinct maloaitour, tenloaitour from tour";

        Map<String, String> result = new HashMap<>();

        Connection con = utils.db.DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);

            ResultSet resultSet = pstm.executeQuery();
            while (resultSet.next()) {
                String maloaitour = resultSet.getString("maloaitour");
                String tenloaitour = resultSet.getString("tenloaitour");
                result.put(maloaitour, tenloaitour);
            }


        } catch (SQLException e) {
            result = null;
        }
        return result;
    }

    public static ChiTietTour tenMaLoai(String maloaitour) {
        ChiTietTour cct = new ChiTietTour();
        try {
            PreparedStatement pstm = utils.db.DatabaseUtil.getConnection().prepareStatement("select * from tour where maloaitour = ?");
            pstm.setString(1, maloaitour);
            ResultSet resultSet = pstm.executeQuery();
            if (resultSet.next()) {
                String maloaitourdb = resultSet.getString("maloaitour");
                String tenloaitourdb = resultSet.getString("tenloaitour");

                cct.setMaloaiTour(maloaitourdb);
                cct.setTenloaiTour(tenloaitourdb);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cct;
    }

    public static List<ChiTietTour> AllTour() {
        List<ChiTietTour> cctour = new ArrayList<>();
        String sql = "select * from tour";
        Connection con = utils.db.DatabaseUtil.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                String maTourdb = rs.getString("matour");
                String maloaiTour = rs.getString("maloaitour");
                String tenloaiTour = rs.getString("tenloaitour");
                String tenTour = rs.getString("tentour");
                Integer giavenguoilon = rs.getInt("giavenguoilon");
                Integer giavetreem = rs.getInt("giavetreem");
                String thoigian = rs.getString("thoigian");
                String khoihanh = rs.getString("khoihanh");
                String phuongtien = rs.getString("phuongtien");
                String khachsan = rs.getString("khachsan");
                String lichtrinh = rs.getString("lichtrinh");
                String hinhshow = rs.getString("hinhshow");

                ChiTietTour chiTietTour = new ChiTietTour();
                chiTietTour.setMaTourdb(maTourdb);
                chiTietTour.setMaloaiTour(maloaiTour);
                chiTietTour.setTenloaiTour(tenloaiTour);
                chiTietTour.setTenTour(tenTour);
                chiTietTour.setGiavenguoilon(giavenguoilon);
                chiTietTour.setGiavetreem(giavetreem);
                chiTietTour.setThoigian(thoigian);
                chiTietTour.setKhoihanh(khoihanh);
                chiTietTour.setPhuongtien(phuongtien);
                chiTietTour.setKhachsan(khachsan);
                chiTietTour.setLichtrinh(lichtrinh);
                chiTietTour.setHinhshow(hinhshow);
                cctour.add(chiTietTour);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cctour;
    }


}
