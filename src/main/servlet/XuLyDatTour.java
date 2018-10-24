import entity.ChiTietTour;
import utils.StringUtils.StringUtil;
import utils.db.DonHangDB;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class XuLyDatTour extends BaseServlet {
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String madonhang = StringUtil.randomAlphaNumeric(20);
        String matour = req.getParameter("matour");
        int songuoilon = Integer.parseInt(req.getParameter("soNguoiLon"));
        int sotrevua = Integer.parseInt(req.getParameter("soTreVua"));
        int sotrenho = Integer.parseInt(req.getParameter("soTreNho"));
        String khoihanh = req.getParameter("ngayKhoiHanh");
        Date ngaykhoihanh;
        try {
            ngaykhoihanh = DATE_FORMAT.parse(khoihanh);
        } catch (ParseException e) {
            ngaykhoihanh = null;
        }
        String cachThanhToan = req.getParameter("cachThanhToan");
        ChiTietTour chiTietTour = TourDB.hienThiCCT(matour);
        long tongtien = chiTietTour.getGiavenguoilon() * songuoilon + chiTietTour.getGiavetreem() * sotrevua;
        String ghichu = req.getParameter("ghiChu");

        int ketquaDatTour = DonHangDB.datTour(madonhang, matour, songuoilon, sotrevua, sotrenho, tongtien, ngaykhoihanh, cachThanhToan, ghichu);

        String tennguoidat = req.getParameter("tenNguoiDat");
        String diachinguoidat = req.getParameter("diaChiNguoiDat");
        String sdtnguoidat = req.getParameter("sdtNguoiDat");
        String emailnguoidat = req.getParameter("emailNguoiDat");

        String[] hotennguoidicungs = req.getParameterValues("hoTenNguoiDiCung");
        String[] gioitinhnguoidicungs = req.getParameterValues("gioiTinhNguoiDiCung");
        String[] dotuoinguoidicungs = req.getParameterValues("doTuoiNguoiDiCung");


        List<String> hoTenNguoiDiCungList = Arrays.asList(hotennguoidicungs);
        if (ketquaDatTour == 1) {
            int ketquaNguoiDat = DonHangDB.nguoiDat(madonhang, tennguoidat, sdtnguoidat, diachinguoidat, emailnguoidat);

            for(int i =0; i < hoTenNguoiDiCungList.size() - 1; i++){
                int ketquaNguoiDiCung = DonHangDB.nguoiDiCung(madonhang,hotennguoidicungs[i],gioitinhnguoidicungs[i],dotuoinguoidicungs[i]);
            }

            req.setAttribute("main_right", "dattourthanhcong");
            req.setAttribute("cachThanhToandanhap",cachThanhToan);
            req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);

        } else {
            req.setAttribute("loidattour", "Lỗi lưu dữ liệu, vui lòng kiểm tra và nhập lại!");
            req.setAttribute("tennguoidatdanhap",tennguoidat);
            req.setAttribute("diachinguoidatdanhap",diachinguoidat);
            req.setAttribute("sdtnguoidatdanhap",sdtnguoidat);
            req.setAttribute("emailnguoidatdanhap",emailnguoidat);
            req.setAttribute("ghichudanhap",ghichu);

            for(int i = 0; i < hoTenNguoiDiCungList.size() - 1; i++) {
            req.setAttribute("hotennguoidicungdanhap",hotennguoidicungs[i]);
            }
            for(int i = 0; i < hoTenNguoiDiCungList.size() - 1; i++) {
                req.setAttribute("gioitinhnguoidicungdanhap", gioitinhnguoidicungs);
            }
            for(int i = 0; i < hoTenNguoiDiCungList.size() - 1; i++) {
                req.setAttribute("dotuoinguoidicungdanhap", dotuoinguoidicungs);
            }

            req.getRequestDispatcher("/kdattour?matour=" + matour).forward(req, resp);
        }
    }
}
