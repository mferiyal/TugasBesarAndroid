package com.mfir.pc.ta.user;

class Mahasiswa {

    private String nama, status ;
    private int absen, nim;

    public Mahasiswa(String nama, String status, int absen , int nim){
        this.nim = nim;
        this.absen = absen;
        this.nama = nama;
        this.status = status;
    }

    public String getNama(){
        return nama;
    }

    public void setNama(String nama) {this.nama = nama;}

    public String getStatus(){
        return status;
    }

    public void setStatus(String status) {this.status = status;}

    public int getNim() {return nim;}

    public void setNim(int nim) {this.nim = nim;}

    public int getAbsen() {return absen;}

    public void setAbsen(int absen) {this.absen = absen;}
}