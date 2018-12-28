package com.mfir.pc.ta.api;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/**
 * Created by MSI on 20/12/2018.
 */

public class apiClient
{
    public static final String URL = "http://192.168.88.78/andro_ta/index.php/";
    private static Retrofit retrofit = null;
    public static Retrofit getCLient(){
        if(retrofit ==null){
            retrofit = new Retrofit.Builder()
                    .baseUrl(URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
        }
        return retrofit;
    }
}
