package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

/**
 * Created by DIMAS on 21/12/2018.
 */

public class Jadwal {
    @SerializedName("id_jadwal") private int id_jadwal;
    @SerializedName("id_matkul") private int id_matkul;
    @SerializedName("nama_mk") private String nama_mk;
    @SerializedName("hari") private String hari;
    @SerializedName("jam_mulai") private String jam_mulai;
    @SerializedName("jam_selesai") private String jam_selesai;


    public int getId_matkul() {
        return id_matkul;
    }

    public void setId_matkul(int id_matkul) {
        this.id_matkul = id_matkul;
    }

    public int getId_jadwal() {
        return id_jadwal;
    }

    public void setId_jadwal(int id_jadwal) {
        this.id_jadwal = id_jadwal;
    }

    public String getNama_mk() {
        return nama_mk;
    }

    public void setNama_mk(String nama_mk) {
        this.nama_mk = nama_mk;
    }

    public String getHari() {
        return hari;
    }

    public void setHari(String hari) {
        this.hari = hari;
    }

    public String getJam_mulai() {
        return jam_mulai;
    }

    public void setJam_mulai(String jam_mulai) {
        this.jam_mulai = jam_mulai;
    }

    public String getJam_selesai() {
        return jam_selesai;
    }

    public void setJam_selesai(String jam_selesai) {
        this.jam_selesai = jam_selesai;
    }
}
