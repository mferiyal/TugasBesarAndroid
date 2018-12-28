package com.mfir.pc.ta.user;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

import com.mfir.pc.ta.R;
import com.mfir.pc.ta.sessionMan.SessionManagement;

public class home_mahasiswa extends AppCompatActivity {

    Button btnLogout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_mahasiswa);
        btnLogout = (Button)findViewById(R.id.btnLogout);
        final SessionManagement sessionManagement = new SessionManagement(this);
        getSupportActionBar().setTitle("Halaman Mahasiswa");
        btnLogout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sessionManagement.logoutUser();

            }
        });
    }
}
