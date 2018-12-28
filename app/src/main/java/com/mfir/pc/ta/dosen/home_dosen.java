package com.mfir.pc.ta.dosen;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

import com.mfir.pc.ta.R;
import com.mfir.pc.ta.sessionMan.SessionManagement;

public class home_dosen extends AppCompatActivity {
    Button btnLogout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_dosen);
        btnLogout = (Button)findViewById(R.id.btnLogout);
        final SessionManagement sessionManagement = new SessionManagement(this);
        getSupportActionBar().setTitle("Halaman Dosen");
        btnLogout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sessionManagement.logoutUser();

            }
        });
    }
}
