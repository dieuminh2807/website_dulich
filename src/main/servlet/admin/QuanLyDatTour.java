package admin;

import base.BaseServlet;
import entity.DatTour;
import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class QuanLyDatTour extends BaseServlet {

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sql = "select * from dattour";
        Connection con = DatabaseUtil.getConnection();
        List<DatTour> listDatTour = new ArrayList<>();
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                String madonhang = rs.getString("madonhang");
                String matour = rs.getString("matour");
                Integer songuoilon = rs.getInt("songuoilon");
                Integer sotrevua = rs.getInt("sotrevua");
                Integer sotrenho = rs.getInt("sotrenho");
                Integer tongtien = rs.getInt("tongtien");
                Date ngaykhoihanh = rs.getDate("ngaykhoihanh");
                Date ngaydat = rs.getDate("ngaydat");
                String thanhtoan = rs.getString("thanhtoan");
                String ghichu = rs.getString("ghichu");

                DatTour dattour = new DatTour();
                dattour.setMadonhang(madonhang);
                dattour.setMatour(matour);
                dattour.setSonguoilon(songuoilon);
                dattour.setSotrevua(sotrevua);
                dattour.setSotrenho(sotrenho);
                dattour.setTongtien(tongtien);
                dattour.setNgaykhoihanh(ngaykhoihanh);
                dattour.setNgaydat(ngaydat);
                dattour.setThanhtoan(thanhtoan);
                dattour.setGhichu(ghichu);

                listDatTour.add(dattour);
            }
        } catch (SQLException e) {
            listDatTour = null;
        }
        req.setAttribute("main_type","quanlydattour");
        req.setAttribute("listdattour",listDatTour);
        req.getRequestDispatcher("/admin").forward(req,resp);
    }
}
