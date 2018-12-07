package com.mfir.pc.ta.Rest;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.POST;
import retrofit2.http.PUT;

public interface ApiInterface {
    //    Login
    @FormUrlEncoded
    @POST("Login")
    Call<PostPutDelMhs> getLogin(@Field("nim") String nim,
                                       @Field("password") String password);


}

