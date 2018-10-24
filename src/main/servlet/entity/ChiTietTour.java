package entity;

import java.util.ArrayList;
import java.util.List;

public class ChiTietTour {
    private String maTourdb;
    private String maloaiTour;
    private String tenloaiTour;
    private String tenTour;
    private Integer giavenguoilon;
    private Integer giavetreem;
    private String thoigian;
    private String khoihanh;
    private String phuongtien;
    private String khachsan;
    private String lichtrinh;
    private String hinhshow;
    private List<String> hinhcon = new ArrayList<>();

    public List<String> getHinhcon(){
        return hinhcon;
    }

    public void setHinhcon(List<String> hinh){
        hinhcon = hinh;
    }

    public Integer getGiavenguoilon() {
        return giavenguoilon;
    }

    public void setGiavenguoilon(Integer giavenguoilon) {
        this.giavenguoilon = giavenguoilon;
    }

    public Integer getGiavetreem() {
        return giavetreem;
    }

    public void setGiavetreem(Integer giavetreem) {
        this.giavetreem = giavetreem;
    }

    public void themHinhCon(String cacHinh){
        hinhcon.add(cacHinh);
    }

    public String getHinhshow() {
        return hinhshow;
    }

    public void setHinhshow(String hinhshow) {
        this.hinhshow = hinhshow;
    }

    public String getMaTourdb() {
        return maTourdb;
    }

    public void setMaTourdb(String maTourdb) {
        this.maTourdb = maTourdb;
    }

    public String getMaloaiTour() {
        return maloaiTour;
    }

    public void setMaloaiTour(String maloaiTour) {
        this.maloaiTour = maloaiTour;
    }

    public String getTenloaiTour() {
        return tenloaiTour;
    }

    public void setTenloaiTour(String tenloaiTour) {
        this.tenloaiTour = tenloaiTour;
    }

    public String getTenTour() {
        return tenTour;
    }

    public void setTenTour(String tenTour) {
        this.tenTour = tenTour;
    }

    public String getThoigian() {
        return thoigian;
    }

    public void setThoigian(String thoigian) {
        this.thoigian = thoigian;
    }

    public String getKhoihanh() {
        return khoihanh;
    }

    public void setKhoihanh(String khoihanh) {
        this.khoihanh = khoihanh;
    }

    public String getPhuongtien() {
        return phuongtien;
    }

    public void setPhuongtien(String phuongtien) {
        this.phuongtien = phuongtien;
    }

    public String getKhachsan() {
        return khachsan;
    }

    public void setKhachsan(String khachsan) {
        this.khachsan = khachsan;
    }

    public String getLichtrinh() {
        return lichtrinh;
    }

    public void setLichtrinh(String lichtrinh) {
        this.lichtrinh = lichtrinh;
    }

    @Override
    public String toString() {
        return "ChiTietTour{" +
                "maTourdb='" + maTourdb + '\'' +
                ", maloaiTour='" + maloaiTour + '\'' +
                ", tenloaiTour='" + tenloaiTour + '\'' +
                ", tenTour='" + tenTour + '\'' +
                ", giavenguoilon=" + giavenguoilon +
                ", giavetreem=" + giavetreem +
                ", thoigian='" + thoigian + '\'' +
                ", khoihanh='" + khoihanh + '\'' +
                ", phuongtien='" + phuongtien + '\'' +
                ", khachsan='" + khachsan + '\'' +
                ", lichtrinh='" + lichtrinh + '\'' +
                ", hinhshow='" + hinhshow + '\'' +
                ", hinhcon=" + hinhcon +
                '}';
    }
}


