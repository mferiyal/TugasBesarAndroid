package com.mfir.pc.ta.sessionMan;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

import com.mfir.pc.ta.user.MainActivity;
import java.util.HashMap;

/**
 * Created by MSI on 20/12/2018.
 */

public class SessionManagement {
    //Share preference
    private SharedPreferences mSharedPreference;
    //Editor for Shared preference
    private SharedPreferences.Editor mEditor;
    //context
    private Context mContext;
    //Shared pref mode
    int PRIVATE_MODE;
    //Shared pref name
    private static final String PREF_NAME = "SharedPrefLatihan";
    //Shared Preferences Keys
    private static final String IS_LOGIN = "IsLoggedIn";
    public static final String KEY_NIM = "nim";
    public static final String KEY_PASSWORD = "password";
    public static final String KEY_Nama = "nama";
    public static final String KEY_absen = "absen";
    public static final String KEY_status = "status_user";
    public SessionManagement(Context mContext) {
        this.mContext = mContext;
        mSharedPreference = this.mContext.getSharedPreferences(PREF_NAME,
                PRIVATE_MODE);
        mEditor = mSharedPreference.edit();
    }
    public void createLoginSession(String nim, String password,String nama,String absen,String status_user){
        // Storing login value as TRUE
        mEditor.putBoolean(IS_LOGIN, true);
        // Storing NIM
        mEditor.putString(KEY_NIM, nim);
        // Storing password
        mEditor.putString(KEY_PASSWORD, password);
        mEditor.putString(KEY_Nama, nama);
        mEditor.putString(KEY_absen, absen);
        mEditor.putString(KEY_status, status_user);
        mEditor.commit();
    }
    public HashMap<String, String> getUserInformation(){
        HashMap<String, String> user = new HashMap<String, String>();
        // user email
        user.put(KEY_NIM, mSharedPreference.getString(KEY_NIM, null));
        // user password
        user.put(KEY_PASSWORD, mSharedPreference.getString(KEY_PASSWORD,
                null));
        // return user
        return user;
    }

    public boolean isLoggedIn(){
        return mSharedPreference.getBoolean(IS_LOGIN, false);
    }

    public void checkIsLogin() {
        // Check login status
        if (!isLoggedIn()) {
        // user is not logged in redirect to MainActivity
            Intent i = new Intent(mContext, MainActivity.class);

        // Closing all the Activities
            i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        // Add new Flag to start new Activity
            i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(i);
        }
    }
    public void logoutUser(){
// Clearing all data from Shared Preferences
        mEditor.clear();
        mEditor.commit();
// After logout redirect user to Loing Activity
        Intent i = new Intent(mContext, MainActivity.class);
        i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        mContext.startActivity(i);
    }
    public String getNim(){
        return mSharedPreference.getString("nim",null);
    }
    public String getNama(){
        return mSharedPreference.getString("nama",null);
    }
    public String getAbsen(){
        return mSharedPreference.getString("absen",null);
    }
    public String getStatusUser(){
        return mSharedPreference.getString("status_user",null);
    }
}
