package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

import java.util.List;

/**
 * Created by DIMAS on 21/12/2018.
 */

public class JadwalResponse {
    @SerializedName("status") private  String status;
    @SerializedName("result") List<Jadwal> jadwalList;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Jadwal> getJadwalList() {
        return jadwalList;
    }

    public void setJadwalList(List<Jadwal> jadwalList) {
        this.jadwalList = jadwalList;
    }
}
