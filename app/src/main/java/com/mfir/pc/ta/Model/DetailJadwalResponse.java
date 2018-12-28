package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

import java.util.List;

/**
 * Created by DIMAS on 27/12/2018.
 */

public class DetailJadwalResponse {
    @SerializedName("status") private  String status;
    @SerializedName("result") List<DetailJadwal> detailJadwalList;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<DetailJadwal> getDetailJadwalList() {
        return detailJadwalList;
    }

    public void setDetailJadwalList(List<DetailJadwal> detailJadwalList) {
        this.detailJadwalList = detailJadwalList;
    }
}
