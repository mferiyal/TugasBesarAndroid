package com.mfir.pc.ta.user;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.mfir.pc.ta.R;
import com.mfir.pc.ta.Model.User;
import com.mfir.pc.ta.Model.ValLogin;
import com.mfir.pc.ta.api.InterfaceAPI;
import com.mfir.pc.ta.api.apiClient;
import com.mfir.pc.ta.dosen.home_dosen;
import com.mfir.pc.ta.sessionMan.SessionManagement;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MainActivity extends AppCompatActivity {

    ProgressDialog progress;
    EditText editTextPassword,editTextNim;
    Button btnLogin;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        editTextPassword = (EditText) findViewById(R.id.editPassword);
        editTextNim = (EditText) findViewById(R.id.editNim);
        btnLogin = (Button) findViewById(R.id.btnLogin);

        final SessionManagement sessionManagement = new SessionManagement(this);
        if(sessionManagement.isLoggedIn() && sessionManagement.getStatusUser().equals("dosen")){
            Intent in = new Intent(getApplicationContext(), home_dosen.class);
            startActivity(in);
        }else if(sessionManagement.isLoggedIn() && sessionManagement.getStatusUser().equals("mhs")){
            Intent in = new Intent(getApplicationContext(), home_mahasiswa.class);
            startActivity(in);
        }

        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {


                //mengambil data dari edittext
                String nim = editTextNim.getText().toString();
                String password = editTextPassword.getText().toString();


                InterfaceAPI api = apiClient.getCLient().create(InterfaceAPI.class);

                Call<ValLogin> call = api.login(nim, password);

                call.enqueue(new Callback<ValLogin>() {
                    @Override
                    public void onResponse(Call<ValLogin> call, Response<ValLogin> response) {
                        String status = response.body().getStatus();

                        if (status.equals("success")) {
                            User user = response.body().getUser();
                            if (user.getStatus().equals("mhs")) {
                                sessionManagement.createLoginSession(user.getNim().toString(),
                                        user.getPassword().toString(),
                                        user.getNama().toString(),
                                        user.getAbsen().toString(),
                                        user.getStatus().toString());
                                Intent in = new Intent(getApplicationContext(), home_mahasiswa.class);
                                startActivity(in);
                            } else {
                                sessionManagement.createLoginSession(user.getNim().toString(),
                                        user.getPassword().toString(),
                                        user.getNama().toString(),
                                        user.getAbsen().toString(),
                                        user.getStatus().toString());
                                Intent in = new Intent(getApplicationContext(), home_dosen.class);
                                startActivity(in);
                            }
                        } else {
                            Toast.makeText(MainActivity.this, "fail login", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onFailure(Call<ValLogin> call, Throwable t) {

                        Toast.makeText(MainActivity.this, "Jaringan Error!", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }

}
