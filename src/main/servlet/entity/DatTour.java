package entity;

import java.util.Date;

public class DatTour {
    private String madonhang;
    private String matour;
    private Integer songuoilon;
    private Integer sotrevua;
    private Integer sotrenho;
    private Integer tongtien;
    private Date ngaykhoihanh;
    private Date ngaydat;
    private String thanhtoan;
    private String ghichu;

    public String getMadonhang() {
        return madonhang;
    }

    public void setMadonhang(String madonhang) {
        this.madonhang = madonhang;
    }

    public String getMatour() {
        return matour;
    }

    public void setMatour(String matour) {
        this.matour = matour;
    }

    public Integer getSonguoilon() {
        return songuoilon;
    }

    public void setSonguoilon(Integer songuoilon) {
        this.songuoilon = songuoilon;
    }

    public Integer getSotrevua() {
        return sotrevua;
    }

    public void setSotrevua(Integer sotrevua) {
        this.sotrevua = sotrevua;
    }

    public Integer getSotrenho() {
        return sotrenho;
    }

    public void setSotrenho(Integer sotrenho) {
        this.sotrenho = sotrenho;
    }

    public Integer getTongtien() {
        return tongtien;
    }

    public void setTongtien(Integer tongtien) {
        this.tongtien = tongtien;
    }

    public Date getNgaykhoihanh() {
        return ngaykhoihanh;
    }

    public void setNgaykhoihanh(Date ngaykhoihanh) {
        this.ngaykhoihanh = ngaykhoihanh;
    }

    public Date getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(Date ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getThanhtoan() {
        return thanhtoan;
    }

    public void setThanhtoan(String thanhtoan) {
        this.thanhtoan = thanhtoan;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    @Override
    public String toString() {
        return "DatTour{" +
                "madonhang='" + madonhang + '\'' +
                ", matour='" + matour + '\'' +
                ", songuoilon=" + songuoilon +
                ", sotrevua=" + sotrevua +
                ", sotrenho=" + sotrenho +
                ", tongtien=" + tongtien +
                ", ngaykhoihanh=" + ngaykhoihanh +
                ", ngaydat=" + ngaydat +
                ", thanhtoan='" + thanhtoan + '\'' +
                ", ghichu='" + ghichu + '\'' +
                '}';
    }
}
