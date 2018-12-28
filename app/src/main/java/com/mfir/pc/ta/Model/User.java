package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

/**
 * Created by MSI on 20/12/2018.
 */

public class User {
    @SerializedName("nim") private String nim;
    @SerializedName("nama") private String nama;
    @SerializedName("absen") private String absen;
    @SerializedName("password") private String password;
    @SerializedName("status_user") private String status_user;

    public User(String nim, String nama, String absen, String password, String status) {
        this.nim = nim;
        this.nama = nama;
        this.absen = absen;
        this.password = password;
        this.status_user = status;
    }

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status_user;
    }

    public void setStatus(String status) {
        this.status_user = status;
    }
}
