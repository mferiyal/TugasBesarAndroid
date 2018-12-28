package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

/**
 * Created by MSI on 28/12/2018.
 */

public class AbsenResponse {
    @SerializedName("status") private String status;
    @SerializedName("message") private String message;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
