package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

/**
 * Created by DIMAS on 27/12/2018.
 */

public class DetailJadwal {
    @SerializedName("id_mhs") private String id;
    @SerializedName("nama_mk") private String nama_mk;
    @SerializedName("nama") private String nama;
    @SerializedName("absen") private String absen;
    @SerializedName("ket") private String keterangan;

    public String getNama_mk() {
        return nama_mk;
    }

    public void setNama_mk(String nama_mk) {
        this.nama_mk = nama_mk;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getAbsen() {
        return absen;
    }

    public void setAbsen(String absen) {
        this.absen = absen;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }
}
