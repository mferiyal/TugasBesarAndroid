package com.mfir.pc.ta.api;

import com.mfir.pc.ta.Model.ValLogin;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/**
 * Created by MSI on 19/12/2018.
 */

public interface InterfaceAPI {
    @FormUrlEncoded
    @POST("login")
    Call<ValLogin> login(@Field("nim") String nim,
                         @Field("password") String password);
}
