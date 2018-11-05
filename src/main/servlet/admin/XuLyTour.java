package admin;

import admin.XuLyTourDB.Sua;
import admin.XuLyTourDB.Them;
import admin.XuLyTourDB.Xoa;
import base.BaseServlet;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import entity.ChiTietTour;
import utils.db.DatabaseUtil;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class XuLyTour extends BaseServlet {

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null && (action.equals("xemchitiettour") || action.equals("sua"))) {
            String matour = req.getParameter("matour");
            ChiTietTour ct = TourDB.hienThiCCT(matour);
            ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
            String json = ow.writeValueAsString(ct);
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write(json);
            return;
        }
        if(action != null && action.equals("LuuSua")){
            String maloaitour = req.getParameter("maloaitour");
            String tenloaitour = req.getParameter("tenloaitour");
            String tentour = req.getParameter("tentour");
            int giavenguoilon;
            int giavetreem;
            try{
                giavenguoilon = Integer.parseInt(req.getParameter("giavenguoilon"));}
            catch (Exception e){
                giavenguoilon = 0;
            }
            String thoigian = req.getParameter("thoigian");
            String khoihanh = req.getParameter("khoihanh");
            String phuongtien = req.getParameter("phuongtien");
            String khachsan = req.getParameter("khachsan");
            String lichtrinh = req.getParameter("lichtrinh");
            String matour = req.getParameter("matour");
            try{
                giavetreem = Integer.parseInt(req.getParameter("giavetreem"));}
            catch (Exception e){
                giavetreem = 0;
            }
            boolean thanhcong = Sua.suaChiTietTour(matour, maloaitour, tenloaitour, tentour, giavenguoilon,
                    thoigian, khoihanh, phuongtien, khachsan, lichtrinh, giavetreem);

            String thanhcongJson = "{\"responseCode\": \"0\"}";
            String thatbaiJson = "{\"responseCode\": \"-1\"}";

            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");

            if(thanhcong) {
                resp.getWriter().write(thanhcongJson);
            } else {
                resp.getWriter().write(thatbaiJson);
            }
            return;
        }

        if(action !=null && action.equals("ThemTour")){
            String maloaitour = req.getParameter("maloaitour");
            String tenloaitour = req.getParameter("tenloaitour");
            String tentour = req.getParameter("tentour");
            int giavenguoilon;
            int giavetreem;
            try{
                giavenguoilon = Integer.parseInt(req.getParameter("giavenguoilon"));}
            catch (Exception e){
                giavenguoilon = 0;
            }
            String thoigian = req.getParameter("thoigian");
            String khoihanh = req.getParameter("khoihanh");
            String phuongtien = req.getParameter("phuongtien");
            String khachsan = req.getParameter("khachsan");
            String lichtrinh = req.getParameter("lichtrinh");
            String matour = req.getParameter("matour");
            try{
                giavetreem = Integer.parseInt(req.getParameter("giavetreem"));}
            catch (Exception e){
                giavetreem = 0;
            }

            boolean themthanhcong = Them.themTour(matour, maloaitour, tenloaitour, tentour, giavenguoilon,
                    thoigian, khoihanh, phuongtien, khachsan, lichtrinh, giavetreem);
            String jsonthanhcong = "{\"phanhoithanhcong\":\"0\"}";
            String jsonthatbai = "{\"phanhoithatbai\":\"-1\"}";
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            if(themthanhcong){
                resp.getWriter().write(jsonthanhcong);
            }
            else {
                resp.getWriter().write(jsonthatbai);
            }
            return;
        }
        if(action != null && action.equals("xoa")){
            String matour = req.getParameter("matour");
            boolean xoathanhcong = Xoa.xoaTour(matour);
            if(xoathanhcong){
                JOptionPane.showMessageDialog(null, "Bạn đã xóa thành công!");
            }
            else{
                JOptionPane.showMessageDialog(null, "Xóa thất bại!");
            }
        }

        String sql = "select * from tour";
        Connection con = DatabaseUtil.getConnection();
        List<ChiTietTour> tourList = new ArrayList<>();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                String maloaitour = rs.getString("maloaitour");
                String tenloaitour = rs.getString("tenloaitour");
                String matour = rs.getString("matour");
                String tentour = rs.getString("tentour");
                Integer giavenguoilon = rs.getInt("giavenguoilon");
                String thoigian	= rs.getString("thoigian");
                String khoihanh	 = rs.getString("khoihanh");
                String phuongtien = rs.getString("phuongtien");
                String khachsan	= rs.getString("khachsan");
                String lichtrinh = rs.getString("lichtrinh");
                Integer giavetreem	= rs.getInt("giavetreem");

                ChiTietTour cct = new ChiTietTour();
                cct.setMaloaiTour(maloaitour);
                cct.setTenloaiTour(tenloaitour);
                cct.setMaTourdb(matour);
                cct.setTenTour(tentour);
                cct.setGiavenguoilon(giavenguoilon);
                cct.setThoigian(thoigian);
                cct.setKhoihanh(khoihanh);
                cct.setPhuongtien(phuongtien);
                cct.setKhachsan(khachsan);
                cct.setLichtrinh(lichtrinh);
                cct.setGiavetreem(giavetreem);

                tourList.add(cct);

            }
        } catch (SQLException e) {
            tourList = null;
        }
        req.setAttribute("quanlytour",tourList);
        req.setAttribute("main_type","quanlytour");
        req.getRequestDispatcher("/admin").forward(req,resp);
    }
}
