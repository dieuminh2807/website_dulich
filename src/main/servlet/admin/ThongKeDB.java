package admin;

import utils.db.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class ThongKeDB {
    public static Map<String,Integer> Solandat(){
        Calendar ngayHienTai = Calendar.getInstance();
        ngayHienTai.add(Calendar.MONTH, -6);

        String sql = "select count(*) as 'soLanDat', DATE_FORMAT(ngaydat, \"%Y-%m-01\") as 'thangDat' " +
                "from dattour where ngaydat>=? " +
                "group by DATE_FORMAT(ngaydat, \"%Y-%m-01\")";

        Connection con = DatabaseUtil.getConnection();

        Map<String, Integer> thongKeSoLanDat = new HashMap<>();

        Map<String, Integer> sapxepMap = new LinkedHashMap<>();

        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setDate(1, new java.sql.Date(ngayHienTai.getTime().getTime()));
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int soLan = rs.getInt("soLanDat");
                String thangDat = rs.getString("thangDat");
                thangDat = thangDat.substring(5,7);
                thongKeSoLanDat.put(thangDat, soLan);
            }

            Set<String> keys = new TreeSet<>(thongKeSoLanDat.keySet());

            for (String key : keys) {
                Integer value = thongKeSoLanDat.get(key);
                sapxepMap.put("Tháng " + key, value);
            }

        } catch (SQLException e) {
            sapxepMap = null;
        }
        return sapxepMap;
    }




    public static Map<String,Integer> DoanhThuThang(){
        Calendar ngayHienTai = Calendar.getInstance();
        ngayHienTai.add(Calendar.MONTH, -6);

        String sql = "select sum(tongtien) as 'tongTien', DATE_FORMAT(ngaydat, \"%Y-%m-01\") as 'thangDat'\n" +
                "from dattour where ngaydat>=? " +
                "group by DATE_FORMAT(ngaydat, \"%Y-%m-01\")";

        Connection con = DatabaseUtil.getConnection();

        Map<String, Integer> thongKeTongTien = new HashMap<>();

        Map<String, Integer> sapxepMap = new LinkedHashMap<>();

        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setDate(1, new java.sql.Date(ngayHienTai.getTime().getTime()));
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int tongTien = rs.getInt("tongTien");
                String thangDat = rs.getString("thangDat");
                thangDat = thangDat.substring(5,7);
                thongKeTongTien.put(thangDat, tongTien);
            }

            Set<String> keys = new TreeSet<>(thongKeTongTien.keySet());

            for (String key : keys) {
                Integer value = thongKeTongTien.get(key);
                sapxepMap.put("Tháng " + key, value);
            }

        } catch (SQLException e) {
            sapxepMap = null;
        }
        return sapxepMap;
    }




}
