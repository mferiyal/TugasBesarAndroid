package com.mfir.pc.ta.Model;

import com.google.gson.annotations.SerializedName;

/**
 * Created by MSI on 19/12/2018.
 */

public class ValLogin {

    @SerializedName("status") String status;
    @SerializedName("result") User user;

    public ValLogin(String status, User user) {
        this.status = status;
        this.user = user;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
