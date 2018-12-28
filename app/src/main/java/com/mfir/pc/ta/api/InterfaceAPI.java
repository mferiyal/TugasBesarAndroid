package com.mfir.pc.ta.api;

import com.mfir.pc.ta.Model.AbsenResponse;
import com.mfir.pc.ta.Model.DetailJadwalResponse;
import com.mfir.pc.ta.Model.JadwalResponse;
import com.mfir.pc.ta.Model.ValLogin;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

/**
 * Created by MSI on 19/12/2018.
 */

public interface InterfaceAPI {
    @FormUrlEncoded
    @POST("login")
    Call<ValLogin> login(@Field("nim") String nim,
                         @Field("password") String password);

    @GET("jadwal")
    Call<JadwalResponse> getJadwal();

    @GET("absen")
    Call<DetailJadwalResponse> getDetailJadwalList();

    @FormUrlEncoded
    @POST("absen/absen")
    Call<DetailJadwalResponse> getDetailJadwal(@Field("id_matkul") String matkul);

    @FormUrlEncoded
    @POST("absen")
    Call<AbsenResponse> absensi(@Field("id_mhs") String id,
                                @Field("id_matkul") String mat);

}
